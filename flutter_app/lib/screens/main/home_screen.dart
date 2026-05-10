import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../../widgets/story_circle.dart';
import '../../widgets/post_card.dart';
import '../../widgets/loading_overlay.dart';
import 'create_post_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  late final WebViewController _controller;
  bool _isLoading = true;
  double _progress = 0;
  bool _useNative = true; // show native demo feed

  int _feedTab = 0; // 0=ForYou, 1=Following

  final _demoStories = [
    ('Your Story', null, true, false),
    ('Layla M.', null, false, false),
    ('Ahmed K.', null, false, true),
    ('Sara J.', null, false, false),
    ('Omar T.', null, false, false),
    ('Rania A.', null, false, true),
  ];

  final _demoPosts = [
    (
      'Layla Mohammed',
      '@layla_m',
      'L',
      '2h',
      'Just discovered an amazing new DeFi protocol that's changing how we think about yield farming 🚀 The APY is insane and the team is solid.',
      2100,
      340,
      89,
      true,
      true,
    ),
    (
      'Ahmed Khalil',
      '@ahmed.k',
      'A',
      '4h',
      'Design tip of the day: negative space is your best friend. Let your UI breathe and your users will thank you ✨',
      850,
      127,
      45,
      false,
      false,
    ),
    (
      'Omar Tarek',
      '@omar_t',
      'O',
      '6h',
      'MF-MYFRIEND just hit 1 million active users! The community here is incredible. What an amazing journey 🎉',
      5600,
      892,
      234,
      true,
      true,
    ),
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  void _initWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(AppColors.bgBase)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (p) {
          if (mounted) setState(() => _progress = p / 100.0);
        },
        onPageStarted: (_) {
          if (mounted) setState(() => _isLoading = true);
        },
        onPageFinished: (_) {
          if (mounted) setState(() => _isLoading = false);
        },
      ))
      ..loadRequest(Uri.parse(AppConstants.homeUrl));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      body: _useNative ? _nativeFeed() : _webViewFeed(),
    );
  }

  Widget _nativeFeed() {
    return CustomScrollView(
      slivers: [
        // App bar
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.bgBase,
          elevation: 0,
          title: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgCard,
                  border: Border.all(
                      color: AppColors.gold.withOpacity(0.4), width: 1.5),
                ),
                child: const Center(
                  child: Text(
                    'MF',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: AppColors.gold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'MF-MYFRIEND',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_rounded,
                  color: AppColors.textPrimary, size: 22),
              onPressed: () {},
            ),
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications_none_rounded,
                      color: AppColors.textPrimary, size: 22),
                  onPressed: () {},
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.alert,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 4),
          ],
        ),

        // Stories
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 96,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: _demoStories.length,
                  itemBuilder: (_, i) {
                    final (name, img, isOwn, seen) = _demoStories[i];
                    return Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: StoryCircle(
                        name: isOwn ? 'Your Story' : name,
                        imageUrl: img,
                        isOwn: isOwn,
                        isSeen: seen,
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
              // Feed tabs
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.borderSubtle, width: 0.5),
                  ),
                ),
                child: Row(
                  children: [
                    _feedTabItem('For You', 0),
                    _feedTabItem('Following', 1),
                    _feedTabItem('AI Pick ✦', 2),
                  ],
                ),
              ),
            ],
          ),
        ),

        // AI banner
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.blue.withOpacity(0.07),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.blue.withOpacity(0.25)),
            ),
            child: Row(
              children: [
                const Icon(Icons.auto_awesome_rounded,
                    color: AppColors.blue, size: 18),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '✦ AI Pick for you',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blue,
                        ),
                      ),
                      Text(
                        'Crypto markets up 12% — see top posts',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    minimumSize: Size.zero,
                  ),
                  onPressed: () {},
                  child: Text(
                    'See why ↗',
                    style: GoogleFonts.inter(
                        fontSize: 12, color: AppColors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Post cards
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, i) {
              if (i >= _demoPosts.length) return null;
              final (
                name,
                handle,
                initial,
                time,
                content,
                likes,
                comments,
                shares,
                isVerified,
                isTrending,
              ) = _demoPosts[i];
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: PostCard(
                  authorName: name,
                  authorHandle: handle,
                  authorInitial: initial,
                  timeAgo: time,
                  content: content,
                  likes: likes,
                  comments: comments,
                  shares: shares,
                  isVerified: isVerified,
                  isTrending: isTrending,
                ),
              );
            },
            childCount: _demoPosts.length,
          ),
        ),

        // Bottom padding for nav bar
        const SliverToBoxAdapter(child: SizedBox(height: 80)),
      ],
    );
  }

  Widget _feedTabItem(String label, int index) {
    final active = _feedTab == index;
    return GestureDetector(
      onTap: () => setState(() => _feedTab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? AppColors.gold : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: active ? FontWeight.w600 : FontWeight.w400,
            color: active ? AppColors.gold : AppColors.textMuted,
          ),
        ),
      ),
    );
  }

  Widget _webViewFeed() {
    return Stack(
      children: [
        WebViewWidget(controller: _controller),
        if (_progress > 0 && _progress < 1)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(
              value: _progress,
              minHeight: 3,
              backgroundColor: Colors.transparent,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.gold),
            ),
          ),
        LoadingOverlay(progress: _progress),
      ],
    );
  }
}

void showCreatePost(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => const CreatePostSheet(),
  );
}
