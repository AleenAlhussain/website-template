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

  const _Slide({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.tag,
  });
}

const _slides = [
  _Slide(
    title: 'Connect with\nyour world',
    subtitle: 'Join millions of people sharing moments,\nbuilding communities, and growing together.',
    icon: Icons.people_alt_rounded,
    gradient: [Color(0xFF1A1A2E), Color(0xFF0D0D1A)],
    tag: 'SOCIAL',
  ),
  _Slide(
    title: 'Earn with\nevery post',
    subtitle: 'Get rewarded in MF Coins when you post,\nengage, and invite friends. Money meets media.',
    icon: Icons.toll_rounded,
    gradient: [Color(0xFF1A1200), Color(0xFF0D0D0D)],
    tag: 'CRYPTO',
  ),
  _Slide(
    title: 'Your AI-powered\ncompanion',
    subtitle: 'MF-AI writes captions, analyzes your feed,\nand personalizes everything — just for you.',
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
            // Illustration area — top 55%
            Expanded(
              flex: 55,
              child: Container(
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
                            color: _tagColor(slide.tag).withOpacity(0.3),
                            width: 2,
                          ),
                          color: _tagColor(slide.tag).withOpacity(0.08),
                        ),
                        child: Icon(
                          slide.icon,
                          size: 52,
                          color: _tagColor(slide.tag),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: _tagColor(slide.tag).withOpacity(0.1),
                          border: Border.all(
                            color: _tagColor(slide.tag).withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          slide.tag,
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: _tagColor(slide.tag),
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Text area — bottom 45%
            Expanded(
              flex: 45,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 32, 28, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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

  Color _tagColor(_Slide s) => _tagColorByTag(s.tag);

  Color _tagColorByTag(String tag) {
    switch (tag) {
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
