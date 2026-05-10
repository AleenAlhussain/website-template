import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../../widgets/gold_button.dart';
import '../../widgets/mf_text_field.dart';
import '../main/main_screen.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  int _step = 0;
  final _nameCtrl = TextEditingController();
  final _handleCtrl = TextEditingController();
  final _selectedInterests = <String>{};
  bool _loading = false;

  static const _interests = [
    'Technology', 'Crypto', 'Design', 'Sports', 'Music',
    'Travel', 'Fashion', 'Gaming', 'Finance', 'Food',
    'Photography', 'Fitness',
  ];

  static const _wallets = [
    ('MetaMask', Icons.account_balance_wallet_rounded, AppColors.gold),
    ('Trust Wallet', Icons.shield_rounded, AppColors.blue),
    ('WalletConnect', Icons.link_rounded, AppColors.emerald),
  ];

  @override
  void dispose() {
    _nameCtrl.dispose();
    _handleCtrl.dispose();
    super.dispose();
  }

  Future<void> _finish() async {
    setState(() => _loading = true);
    await Future.delayed(const Duration(milliseconds: 600));
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyLoggedIn, true);
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const MainScreen()),
      (_) => false,
    );
  }

  void _next() {
    if (_step < 2) {
      setState(() => _step++);
    } else {
      _finish();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      appBar: AppBar(
        backgroundColor: AppColors.bgBase,
        leading: _step > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: AppColors.textPrimary, size: 20),
                onPressed: () => setState(() => _step--),
              )
            : const SizedBox.shrink(),
        title: _stepIndicator(),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _body(),
      ),
    );
  }

  Widget _stepIndicator() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (i) {
        final active = i <= _step;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: i == _step ? 20 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: active ? AppColors.gold : AppColors.bgElevated,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  Widget _body() {
    switch (_step) {
      case 0:
        return _step1();
      case 1:
        return _step2();
      case 2:
        return _step3();
      default:
        return const SizedBox();
    }
  }

  // ── Step 1: Name & Username ──
  Widget _step1() {
    return SingleChildScrollView(
      key: const ValueKey(0),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.bgCard,
                    border: Border.all(
                        color: AppColors.gold.withOpacity(0.3), width: 2),
                  ),
                  child: const Icon(Icons.person_rounded,
                      size: 40, color: AppColors.textMuted),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.gold,
                  ),
                  child: const Icon(Icons.camera_alt_rounded,
                      size: 16, color: AppColors.textInverse),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Set up your profile',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'How should others know you?',
            style: GoogleFonts.inter(
                fontSize: 14, color: AppColors.textMuted),
          ),
          const SizedBox(height: 32),
          MFTextField(
            hint: 'Display name',
            controller: _nameCtrl,
            label: 'Full Name',
            prefixIcon: const Icon(Icons.badge_outlined,
                color: AppColors.textMuted, size: 18),
          ),
          const SizedBox(height: 16),
          MFTextField(
            hint: '@username',
            controller: _handleCtrl,
            label: 'Username',
            prefixIcon: const Icon(Icons.alternate_email,
                color: AppColors.textMuted, size: 18),
          ),
          const SizedBox(height: 32),
          GoldButton(label: 'Next', onPressed: _next),
        ],
      ),
    );
  }

  // ── Step 2: Interests ──
  Widget _step2() {
    return SingleChildScrollView(
      key: const ValueKey(1),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            'What are you into?',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Select at least 3 topics to personalise\nyour feed and AI suggestions.',
            style: GoogleFonts.inter(
                fontSize: 14, color: AppColors.textMuted, height: 1.5),
          ),
          const SizedBox(height: 28),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: _interests.map((tag) {
              final active = _selectedInterests.contains(tag);
              return GestureDetector(
                onTap: () => setState(() {
                  if (active) {
                    _selectedInterests.remove(tag);
                  } else {
                    _selectedInterests.add(tag);
                  }
                }),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: active
                        ? AppColors.gold
                        : AppColors.bgElevated,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: active
                          ? AppColors.gold
                          : AppColors.borderSubtle,
                    ),
                  ),
                  child: Text(
                    tag,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: active
                          ? AppColors.textInverse
                          : AppColors.textSecondary,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 36),
          GoldButton(
            label: 'Continue',
            onPressed: _selectedInterests.length >= 3 ? _next : null,
          ),
          const SizedBox(height: 12),
          GoldButton(
            label: 'Skip for now',
            style: MFButtonStyle.ghost,
            onPressed: _next,
          ),
        ],
      ),
    );
  }

  // ── Step 3: Wallet Connect ──
  Widget _step3() {
    return SingleChildScrollView(
      key: const ValueKey(2),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            'Connect your wallet',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Earn MF Coins when you post, engage,\nand invite friends.',
            style: GoogleFonts.inter(
                fontSize: 14, color: AppColors.textMuted, height: 1.5),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.gold.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.gold.withOpacity(0.2)),
            ),
            child: Row(
              children: [
                const Icon(Icons.info_outline,
                    color: AppColors.gold, size: 16),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Connecting a wallet unlocks crypto earnings, tipping, and the marketplace.',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: AppColors.gold.withOpacity(0.9),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          ..._wallets.map((w) {
            final (name, icon, color) = w;
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: AppColors.bgCard,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.borderSubtle),
              ),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withOpacity(0.1),
                  ),
                  child: Icon(icon, color: color, size: 20),
                ),
                title: Text(
                  name,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.textMuted, size: 14),
                onTap: _finish,
              ),
            );
          }),
          const SizedBox(height: 16),
          GoldButton(
            label: 'Skip — connect later',
            style: MFButtonStyle.ghost,
            loading: _loading,
            onPressed: _finish,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
