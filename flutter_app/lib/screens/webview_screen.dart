import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../utils/app_colors.dart';
import '../utils/constants.dart';
import '../widgets/loading_overlay.dart';
import 'no_connection_screen.dart';

/// Standalone full-screen WebView — used for deep-link situations.
class WebViewScreen extends StatefulWidget {
  final String? url;
  const WebViewScreen({super.key, this.url});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen>
    with WidgetsBindingObserver {
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _hasError = false;
  String _currentUrl = '';
  bool _canGoBack = false;
  bool _canGoForward = false;
  double _progress = 0;
  StreamSubscription? _connectivitySub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _currentUrl = widget.url ?? AppConstants.baseUrl;
    _initWebView();
    _listenConnectivity();
  }

  void _initWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(AppColors.bgBase)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (p) {
            if (mounted) setState(() => _progress = p / 100.0);
          },
          onPageStarted: (url) {
            if (mounted)
              setState(() {
                _isLoading = true;
                _hasError = false;
                _currentUrl = url;
              });
            _updateNav();
          },
          onPageFinished: (url) {
            if (mounted)
              setState(() {
                _isLoading = false;
                _currentUrl = url;
              });
            _updateNav();
          },
          onWebResourceError: (err) {
            if (err.isForMainFrame == true && mounted)
              setState(() {
                _isLoading = false;
                _hasError = true;
              });
          },
          onNavigationRequest: (_) => NavigationDecision.navigate,
        ),
      )
      ..loadRequest(Uri.parse(_currentUrl));
  }

  void _listenConnectivity() {
    _connectivitySub = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      if (results.contains(ConnectivityResult.none) && mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const NoConnectionScreen()),
        );
      }
    });
  }

  Future<void> _updateNav() async {
    final back = await _controller.canGoBack();
    final fwd = await _controller.canGoForward();
    if (mounted) setState(() {
      _canGoBack = back;
      _canGoForward = fwd;
    });
  }

  Future<bool> _onBack() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    _connectivitySub?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (!didPop) {
          final shouldPop = await _onBack();
          if (shouldPop && mounted) Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.bgBase,
        appBar: _appBar(),
        body: Stack(
          children: [
            _hasError ? _errorView() : WebViewWidget(controller: _controller),
            if (_progress > 0 && _progress < 1)
              Positioned(
                top: 0, left: 0, right: 0,
                child: LinearProgressIndicator(
                  value: _progress,
                  minHeight: 3,
                  backgroundColor: Colors.transparent,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(AppColors.gold),
                ),
              ),
            LoadingOverlay(progress: _progress),
          ],
        ),
        bottomNavigationBar: _navBar(),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: AppColors.bgBase,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
        onPressed: () => Navigator.maybePop(context),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bgCard,
              border: Border.all(
                  color: AppColors.gold.withOpacity(0.4), width: 1),
            ),
            child: const Center(
              child: Text(
                'MF',
                style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.w900,
                  color: AppColors.gold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            AppConstants.appName,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      actions: [
        if (_isLoading)
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Center(
              child: SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.gold,
                ),
              ),
            ),
          )
        else
          IconButton(
            icon: const Icon(Icons.refresh_rounded, size: 20),
            onPressed: () => _controller.reload(),
          ),
        IconButton(
          icon: const Icon(Icons.more_vert_rounded, size: 20),
          onPressed: _showOptions,
        ),
      ],
    );
  }

  Widget _navBar() {
    return Container(
      height: 56,
      decoration: const BoxDecoration(
        color: AppColors.bgBase,
        border: Border(top: BorderSide(color: AppColors.borderSubtle, width: 0.5)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _navBtn(Icons.arrow_back_ios_rounded, _canGoBack,
                () => _controller.goBack()),
            _navBtn(Icons.arrow_forward_ios_rounded, _canGoForward,
                () => _controller.goForward()),
            _navBtn(
              _isLoading ? Icons.close_rounded : Icons.refresh_rounded,
              true,
              () => _isLoading
                  ? _controller.loadRequest(Uri.parse(_currentUrl))
                  : _controller.reload(),
              active: _isLoading,
            ),
            _navBtn(Icons.home_rounded, true,
                () => _controller.loadRequest(Uri.parse(AppConstants.baseUrl))),
          ],
        ),
      ),
    );
  }

  Widget _navBtn(IconData icon, bool enabled, VoidCallback onTap,
      {bool active = false}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: Icon(
            icon,
            size: 20,
            color: active
                ? AppColors.gold
                : enabled
                    ? AppColors.textSecondary
                    : AppColors.textMuted.withOpacity(0.4),
          ),
        ),
      ),
    );
  }

  Widget _errorView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.alert.withOpacity(0.1),
              ),
              child: const Icon(Icons.wifi_off_rounded,
                  size: 48, color: AppColors.alert),
            ),
            const SizedBox(height: 24),
            const Text(
              'Page Load Error',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Could not load the page. Please try again.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ),
            const SizedBox(height: 28),
            ElevatedButton.icon(
              onPressed: () => _controller.reload(),
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.bgElevated,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_rounded,
                  color: AppColors.textSecondary),
              title: const Text('Go to Home'),
              onTap: () {
                Navigator.pop(context);
                _controller.loadRequest(Uri.parse(AppConstants.baseUrl));
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh_rounded,
                  color: AppColors.textSecondary),
              title: const Text('Refresh'),
              onTap: () {
                Navigator.pop(context);
                _controller.reload();
              },
            ),
            ListTile(
              leading: const Icon(Icons.copy_rounded,
                  color: AppColors.textSecondary),
              title: const Text('Copy URL'),
              onTap: () {
                Navigator.pop(context);
                Clipboard.setData(ClipboardData(text: _currentUrl));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('URL copied'),
                    backgroundColor: AppColors.bgElevated,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
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
