import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../auth/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late final TabController _tabCtrl;
  int _gridTab = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyLoggedIn, false);
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: AppColors.bgBase,
            actions: [
              IconButton(
                icon: const Icon(Icons.share_outlined, size: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert_rounded, size: 20),
                onPressed: () => _showOptions(),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: _profileHeader(),
              collapseMode: CollapseMode.pin,
            ),
          ),
          SliverToBoxAdapter(child: _profileInfo()),
          SliverToBoxAdapter(child: _statsBar()),
          SliverToBoxAdapter(child: _walletBanner()),
          SliverToBoxAdapter(child: _actionButtons()),
          SliverToBoxAdapter(child: _achievementBadges()),
          SliverPersistentHeader(
            pinned: true,
            delegate: _TabBarDelegate(tabController: _tabCtrl),
          ),
        ],
        body: TabBarView(
          controller: _tabCtrl,
          children: [
            _postsGrid(),
            _reelsGrid(),
            _eventsTab(),
            _shopTab(),
          ],
        ),
      ),
    );
  }

  Widget _profileHeader() {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Cover gradient background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1A1A2E), Color(0xFF0D1517), Color(0xFF0D0D0D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Subtle grid pattern overlay
        Positioned.fill(
          child: CustomPaint(painter: _GridPatternPainter()),
        ),
        // Gold glow at top
        Positioned(
          top: -60,
          left: -40,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  AppColors.gold.withOpacity(0.08),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        // Bottom fade to bgBase
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 60,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, AppColors.bgBase.withOpacity(0.6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        // Avatar
        Positioned(
          bottom: -36,
          left: 0,
          right: 0,
          child: Center(child: _avatarRing()),
        ),
      ],
    );
  }

  Widget _avatarRing() {
    return Container(
      width: 84,
      height: 84,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [AppColors.gold, Color(0xFFFF6B00)],
        ),
        border: Border.all(color: AppColors.bgBase, width: 3),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.bgElevated,
        ),
        child: const Center(
          child: Text(
            'Y',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: AppColors.gold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 44, 16, 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Name',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.verified_rounded,
                  color: AppColors.blue, size: 16),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            '@yourhandle',
            style: GoogleFonts.inter(
                fontSize: 13, color: AppColors.textMuted),
          ),
          const SizedBox(height: 8),
          Text(
            'Entrepreneur · Crypto enthusiast · Building the future one post at a time ✨',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 13,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _statsBar() {
    final stats = [
      ('Posts', '284'),
      ('Followers', '12.4K'),
      ('Following', '389'),
      ('MF Coins', '4,820'),
    ];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.bgCard,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderSubtle),
      ),
      child: Row(
        children: stats.map((s) {
          final (label, value) = s;
          return Expanded(
            child: Column(
              children: [
                Text(
                  value,
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: label == 'MF Coins'
                        ? AppColors.gold
                        : AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppColors.textMuted,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _walletBanner() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.gold.withOpacity(0.12),
            AppColors.bgCard,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gold.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.gold.withOpacity(0.12),
              border: Border.all(color: AppColors.gold.withOpacity(0.3)),
            ),
            child: const Icon(Icons.toll_rounded,
                color: AppColors.gold, size: 18),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4,820 MF Coins',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gold,
                ),
              ),
              Text(
                'Wallet connected · Earning rewards',
                style: GoogleFonts.inter(
                    fontSize: 11, color: AppColors.textMuted),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: AppColors.gold.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Top Up',
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: AppColors.gold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButtons() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit_rounded, size: 15),
                label: Text(
                  'Edit Profile',
                  style: GoogleFonts.inter(
                      fontSize: 13, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          _iconBtn(Icons.qr_code_rounded, () {}),
          const SizedBox(width: 8),
          _iconBtn(Icons.share_outlined, () {}),
        ],
      ),
    );
  }

  Widget _iconBtn(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.bgCard,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderSubtle),
        ),
        child: Icon(icon, color: AppColors.textSecondary, size: 18),
      ),
    );
  }

  Widget _achievementBadges() {
    final badges = [
      (Icons.verified_rounded, AppColors.blue, 'Verified'),
      (Icons.toll_rounded, AppColors.gold, 'Top Earner'),
      (Icons.group_rounded, AppColors.emerald, '10K Club'),
      (Icons.auto_awesome_rounded, AppColors.blue, 'AI Pioneer'),
      (Icons.star_rounded, AppColors.gold, 'OG Member'),
    ];
    return SizedBox(
      height: 64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
        itemCount: badges.length,
        itemBuilder: (_, i) {
          final (icon, color, label) = badges[i];
          return Tooltip(
            message: label,
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(0.12),
                border: Border.all(color: color.withOpacity(0.3)),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
          );
        },
      ),
    );
  }

  Widget _postsGrid() {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 80),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 18,
      itemBuilder: (_, i) => Container(
        color: AppColors.bgCard,
        child: Center(
          child: Icon(
            i % 4 == 0 ? Icons.videocam_rounded : Icons.image_outlined,
            color: AppColors.textMuted,
            size: 24,
          ),
        ),
      ),
    );
  }

  Widget _reelsGrid() {
    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 80),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 0.65,
      ),
      itemCount: 12,
      itemBuilder: (_, i) => Container(
        color: AppColors.bgElevated,
        child: const Center(
          child: Icon(Icons.play_circle_outline_rounded,
              color: AppColors.textMuted, size: 28),
        ),
      ),
    );
  }

  Widget _eventsTab() {
    return const Center(
      child: Text(
        'No upcoming events',
        style: TextStyle(color: AppColors.textMuted),
      ),
    );
  }

  Widget _shopTab() {
    return const Center(
      child: Text(
        'Your shop is empty',
        style: TextStyle(color: AppColors.textMuted),
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
              leading: const Icon(Icons.settings_outlined,
                  color: AppColors.textSecondary),
              title: const Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.qr_code_rounded,
                  color: AppColors.textSecondary),
              title: const Text('My QR Code'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded, color: AppColors.alert),
              title: const Text('Log Out',
                  style: TextStyle(color: AppColors.alert)),
              onTap: () {
                Navigator.pop(context);
                _logout();
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _GridPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0x08FFFFFF)
      ..strokeWidth = 0.5;
    const spacing = 28.0;
    for (double x = 0; x < size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += spacing) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(_GridPatternPainter old) => false;
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  _TabBarDelegate({required this.tabController});

  @override
  double get minExtent => 44;

  @override
  double get maxExtent => 44;

  @override
  Widget build(_, __, ___) {
    return Container(
      color: AppColors.bgBase,
      child: TabBar(
        controller: tabController,
        indicatorColor: AppColors.gold,
        indicatorWeight: 2,
        labelColor: AppColors.gold,
        unselectedLabelColor: AppColors.textMuted,
        labelStyle: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle: GoogleFonts.inter(fontSize: 12),
        tabs: const [
          Tab(text: 'Posts'),
          Tab(text: 'Reels'),
          Tab(text: 'Events'),
          Tab(text: 'Shop'),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_TabBarDelegate old) => old.tabController != tabController;
}
