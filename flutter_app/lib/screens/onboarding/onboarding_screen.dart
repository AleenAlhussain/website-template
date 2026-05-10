import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../../widgets/gold_button.dart';
import '../auth/signup_screen.dart';
import '../auth/login_screen.dart';

class _Slide {
  final String title;
  final String subtitle;
  final IconData icon;
  final List<Color> gradient;
  final String tag;

  // Optional image assets — when set, replaces the icon illustration
  final String? heroImage;
  final String? badgeImage1;
  final String? badgeImage2;

  const _Slide({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.tag,
    this.heroImage,
    this.badgeImage1,
    this.badgeImage2,
  });
}

const _slides = [
  _Slide(
    title: 'Earn with\nevery post',
    subtitle:
        'Get rewarded in MF Coins when you post,\nengage, and invite friends. Money meets media.',
    icon: Icons.toll_rounded,
    gradient: [Color(0xFF0D1B2A), Color(0xFF0A1628)],
    tag: 'CRYPTO',
    heroImage: 'assets/images/onboarding_coins.png',
    badgeImage1: 'assets/images/onboarding_icon_trending.png',
    badgeImage2: 'assets/images/onboarding_icon_cube.png',
  ),
  _Slide(
    title: 'Connect with\nyour world',
    subtitle:
        'Join millions of people sharing moments,\nbuilding communities, and growing together.',
    icon: Icons.people_alt_rounded,
    gradient: [Color(0xFF1A1A2E), Color(0xFF0D0D1A)],
    tag: 'SOCIAL',
  ),
  _Slide(
    title: 'Your AI-powered\ncompanion',
    subtitle:
        'MF-AI writes captions, analyzes your feed,\nand personalizes everything — just for you.',
    icon: Icons.auto_awesome_rounded,
    gradient: [Color(0xFF001A3D), Color(0xFF0D0D0D)],
    tag: 'AI',
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageCtrl = PageController();
  int _currentPage = 0;

  Future<void> _finish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyOnboarded, true);
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SignUpScreen()),
    );
  }

  void _next() {
    if (_currentPage < 2) {
      _pageCtrl.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutCubic,
      );
    } else {
      _finish();
    }
  }

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageCtrl,
            onPageChanged: (i) => setState(() => _currentPage = i),
            itemCount: _slides.length,
            itemBuilder: (_, i) => _SlidePage(slide: _slides[i]),
          ),
          // Skip button
          Positioned(
            top: 56,
            right: 20,
            child: SafeArea(
              child: TextButton(
                onPressed: _finish,
                child: Text(
                  'Skip',
                  style: GoogleFonts.inter(
                    color: AppColors.textMuted,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          // Bottom controls
          Positioned(
            left: 24,
            right: 24,
            bottom: 48,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageCtrl,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: AppColors.textMuted,
                    activeDotColor: AppColors.gold,
                    dotHeight: 6,
                    dotWidth: 6,
                    expansionFactor: 3,
                    spacing: 6,
                  ),
                ),
                const SizedBox(height: 28),
                GoldButton(
                  label: _currentPage == 2 ? 'Get Started' : 'Next →',
                  onPressed: _next,
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.inter(
                        color: AppColors.textMuted,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          style: GoogleFonts.inter(
                            color: AppColors.gold,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Slide page ─────────────────────────────────────────────────────────────────

class _SlidePage extends StatelessWidget {
  final _Slide slide;
  const _SlidePage({required this.slide});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgBase,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Illustration — top 55%
            Expanded(
              flex: 55,
              child: slide.heroImage != null
                  ? _imageIllustration()
                  : _iconIllustration(),
            ),
            // Text — bottom 45%
            Expanded(
              flex: 45,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 32, 28, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag chip
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: _tagColor.withOpacity(0.12),
                        border: Border.all(color: _tagColor.withOpacity(0.3)),
                      ),
                      child: Text(
                        slide.tag,
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: _tagColor,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      slide.title,
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                        height: 1.25,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      slide.subtitle,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Image-based illustration (slide 1) ──────────────────────────────────────

  Widget _imageIllustration() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Dark gradient card background
        Container(
          margin: const EdgeInsets.fromLTRB(24, 80, 24, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: LinearGradient(
              colors: slide.gradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(
              color: AppColors.gold.withOpacity(0.15),
              width: 1,
            ),
          ),
        ),
        // Hero image centred in the card
        Positioned.fill(
          top: 80,
          left: 24,
          right: 24,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.asset(
              slide.heroImage!,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const SizedBox.shrink(),
            ),
          ),
        ),
        // Badge 1 — top-left floating card
        if (slide.badgeImage1 != null)
          Positioned(
            top: 96,
            left: 16,
            child: _floatingBadge(slide.badgeImage1!),
          ),
        // Badge 2 — bottom-right floating card
        if (slide.badgeImage2 != null)
          Positioned(
            bottom: 20,
            right: 16,
            child: _floatingBadge(slide.badgeImage2!),
          ),
      ],
    );
  }

  Widget _floatingBadge(String assetPath) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.bgCard,
        border: Border.all(color: AppColors.borderSubtle),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const SizedBox.shrink(),
        ),
      ),
    );
  }

  // ── Icon-based illustration (slides 2 & 3) ──────────────────────────────────

  Widget _iconIllustration() {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 80, 24, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: slide.gradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: AppColors.borderSubtle),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: _tagColor.withOpacity(0.3),
                  width: 2,
                ),
                color: _tagColor.withOpacity(0.08),
              ),
              child: Icon(slide.icon, size: 52, color: _tagColor),
            ),
            const SizedBox(height: 20),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: _tagColor.withOpacity(0.1),
                border: Border.all(color: _tagColor.withOpacity(0.3)),
              ),
              child: Text(
                slide.tag,
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: _tagColor,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color get _tagColor {
    switch (slide.tag) {
      case 'SOCIAL':
        return AppColors.emerald;
      case 'CRYPTO':
        return AppColors.gold;
      case 'AI':
        return AppColors.blue;
      default:
        return AppColors.gold;
    }
  }
}
