import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../utils/constants.dart';
import '../utils/app_theme.dart';
import '../widgets/navigation_controls.dart';
import '../widgets/loading_overlay.dart';
import 'no_connection_screen.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen>
    with WidgetsBindingObserver {
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _hasError = false;
  String _currentUrl = AppConstants.baseUrl;
  bool _canGoBack = false;
  bool _canGoForward = false;
  double _loadingProgress = 0.0;
  StreamSubscription? _connectivitySubscription;
  bool _showControls = true;
  double _lastScrollOffset = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initWebView();
    _listenConnectivity();
  }

  void _initWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) {
            if (mounted) {
              setState(() => _loadingProgress = progress / 100.0);
            }
          },
          onPageStarted: (url) {
            if (mounted) {
              setState(() {
                _isLoading = true;
                _hasError = false;
                _currentUrl = url;
              });
              _updateNavState();
            }
          },
          onPageFinished: (url) {
            if (mounted) {
              setState(() {
                _isLoading = false;
                _currentUrl = url;
              });
              _updateNavState();
            }
          },
          onWebResourceError: (error) {
            if (error.isForMainFrame == true && mounted) {
              setState(() {
                _isLoading = false;
                _hasError = true;
              });
            }
          },
          onNavigationRequest: (request) {
            final uri = Uri.parse(request.url);
            final base = Uri.parse(AppConstants.baseUrl);
            if (uri.host == base.host || uri.host.endsWith('.${base.host}')) {
              return NavigationDecision.navigate;
            }
            // Allow social login redirects and common CDNs
            final allowedHosts = [
              'google.com', 'facebook.com', 'twitter.com',
              'accounts.google.com', 'connect.facebook.net',
            ];
            for (final host in allowedHosts) {
              if (uri.host.endsWith(host)) {
                return NavigationDecision.navigate;
              }
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'FlutterApp',
        onMessageReceived: (_) {},
      )
      ..loadRequest(Uri.parse(AppConstants.baseUrl));

    _injectScrollListener();
  }

  void _injectScrollListener() {
    _controller.runJavaScript('''
      var lastScrollTop = 0;
      window.addEventListener('scroll', function() {
        var st = window.pageYOffset || document.documentElement.scrollTop;
        if (Math.abs(st - lastScrollTop) > 30) {
          if (typeof FlutterApp !== 'undefined') {
            FlutterApp.postMessage(st > lastScrollTop ? 'scrollDown' : 'scrollUp');
          }
          lastScrollTop = st <= 0 ? 0 : st;
        }
      }, false);
    ''');
  }

  void _listenConnectivity() {
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      if (results.contains(ConnectivityResult.none) && mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const NoConnectionScreen()),
        );
      }
    });
  }

  Future<void> _updateNavState() async {
    final back = await _controller.canGoBack();
    final forward = await _controller.canGoForward();
    if (mounted) {
      setState(() {
        _canGoBack = back;
        _canGoForward = forward;
      });
    }
  }

  Future<void> _refresh() async {
    setState(() {
      _isLoading = true;
      _hasError = false;
    });
    await _controller.reload();
  }

  Future<bool> _onWillPop() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
      return false;
    }
    return _showExitDialog();
  }

  Future<bool> _showExitDialog() async {
    return await showDialog<bool>(
          context: context,
          builder: (_) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: const Text('Exit App'),
            content: const Text('Are you sure you want to exit?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                  SystemNavigator.pop();
                },
                child: const Text('Exit'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (!didPop) await _onWillPop();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: Stack(
          children: [
            _hasError ? _buildErrorView() : _buildWebView(),
            if (_isLoading) LoadingOverlay(progress: _loadingProgress),
            if (_loadingProgress > 0 && _loadingProgress < 1)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: LinearProgressIndicator(
                  value: _loadingProgress,
                  minHeight: 3,
                  backgroundColor: Colors.transparent,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    AppTheme.accent,
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedSlide(
                offset: _showControls ? Offset.zero : const Offset(0, 1),
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                child: NavigationControls(
                  canGoBack: _canGoBack,
                  canGoForward: _canGoForward,
                  isLoading: _isLoading,
                  onBack: () => _controller.goBack(),
                  onForward: () => _controller.goForward(),
                  onRefresh: _refresh,
                  onHome: () => _controller.loadRequest(
                    Uri.parse(AppConstants.baseUrl),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu_rounded),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.people_alt_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 8),
          const Text(AppConstants.appName),
        ],
      ),
      actions: [
        if (_isLoading)
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              ),
            ),
          )
        else
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: _refresh,
            tooltip: 'Refresh',
          ),
        IconButton(
          icon: const Icon(Icons.more_vert_rounded),
          onPressed: _showOptionsMenu,
          tooltip: 'More options',
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppTheme.gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: AppTheme.gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.people_alt_rounded,
                      color: Colors.white,
                      size: 56,
                    ),
                    SizedBox(height: 12),
                    Text(
                      AppConstants.appName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Connect. Share. Discover.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _drawerItem(
                  icon: Icons.home_rounded,
                  label: 'Home',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(Uri.parse(AppConstants.baseUrl));
                  },
                ),
                _drawerItem(
                  icon: Icons.person_rounded,
                  label: 'Profile',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}profile'));
                  },
                ),
                _drawerItem(
                  icon: Icons.notifications_rounded,
                  label: 'Notifications',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}notifications'));
                  },
                ),
                _drawerItem(
                  icon: Icons.message_rounded,
                  label: 'Messages',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}messages'));
                  },
                ),
                _drawerItem(
                  icon: Icons.group_rounded,
                  label: 'Groups',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}groups'));
                  },
                ),
                _drawerItem(
                  icon: Icons.pages_rounded,
                  label: 'Pages',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}pages'));
                  },
                ),
                const Divider(),
                _drawerItem(
                  icon: Icons.settings_rounded,
                  label: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                    _controller.loadRequest(
                        Uri.parse('${AppConstants.baseUrl}settings'));
                  },
                ),
                _drawerItem(
                  icon: Icons.refresh_rounded,
                  label: 'Refresh Page',
                  onTap: () {
                    Navigator.pop(context);
                    _refresh();
                  },
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              AppConstants.baseUrl,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primary),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
      onTap: onTap,
      horizontalTitleGap: 8,
    );
  }

  Widget _buildWebView() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 56),
      child: WebViewWidget(controller: _controller),
    );
  }

  Widget _buildErrorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.wifi_off_rounded,
                size: 56,
                color: Colors.red.shade400,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              AppConstants.errorTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              AppConstants.errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: _refresh,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try Again'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _controller.loadRequest(
                Uri.parse(AppConstants.baseUrl),
              ),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }

  void _showOptionsMenu() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_rounded),
              title: const Text('Go to Home'),
              onTap: () {
                Navigator.pop(context);
                _controller.loadRequest(Uri.parse(AppConstants.baseUrl));
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh_rounded),
              title: const Text('Refresh Page'),
              onTap: () {
                Navigator.pop(context);
                _refresh();
              },
            ),
            ListTile(
              leading: const Icon(Icons.copy_rounded),
              title: const Text('Copy URL'),
              onTap: () {
                Navigator.pop(context);
                Clipboard.setData(ClipboardData(text: _currentUrl));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('URL copied to clipboard'),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
