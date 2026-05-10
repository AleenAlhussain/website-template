import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/auth_service.dart';
import '../../services/api_client.dart';
import '../../utils/app_colors.dart';
import '../../widgets/gold_button.dart';

class OtpScreen extends StatefulWidget {
  final String contact;
  final VoidCallback onVerified;

  const OtpScreen({
    super.key,
    required this.contact,
    required this.onVerified,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _controllers = List.generate(4, (_) => TextEditingController());
  final _focuses = List.generate(4, (_) => FocusNode());
  int _countdown = 45;
  Timer? _timer;
  bool _loading = false;
  bool get _complete =>
      _controllers.every((c) => c.text.isNotEmpty);

  @override
  void initState() {
    super.initState();
    _startTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focuses[0].requestFocus();
    });
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _countdown = 45);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_countdown <= 0) {
        t.cancel();
      } else {
        setState(() => _countdown--);
      }
    });
  }

  void _onInput(int index, String value) {
    if (value.isNotEmpty && index < 3) {
      _focuses[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focuses[index - 1].requestFocus();
    }
    setState(() {});
  }

  String? _error;

  Future<void> _verify() async {
    if (!_complete) return;
    setState(() { _loading = true; _error = null; });
    final code = _controllers.map((c) => c.text).join();
    try {
      await AuthService.instance.verifyOtp(
        contact: widget.contact,
        code: code,
      );
      if (!mounted) return;
      widget.onVerified();
    } on ApiException catch (e) {
      setState(() { _error = e.message; _loading = false; });
    } catch (_) {
      setState(() { _error = 'Verification failed. Try again.'; _loading = false; });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focuses) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      appBar: AppBar(
        backgroundColor: AppColors.bgBase,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.textPrimary, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              // Icon
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgCard,
                  border:
                      Border.all(color: AppColors.gold.withOpacity(0.3), width: 1.5),
                ),
                child: const Icon(Icons.sms_outlined,
                    color: AppColors.gold, size: 32),
              ),
              const SizedBox(height: 24),
              Text(
                'Check your messages',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'We sent a 4-digit code to',
                style: GoogleFonts.inter(
                    fontSize: 14, color: AppColors.textMuted),
              ),
              const SizedBox(height: 4),
              Text(
                widget.contact,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),

              // OTP boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (i) {
                  final hasFocus = _focuses[i].hasFocus;
                  final hasText = _controllers[i].text.isNotEmpty;
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: AppColors.bgInput,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: hasFocus
                            ? AppColors.gold
                            : hasText
                                ? AppColors.gold.withOpacity(0.4)
                                : AppColors.borderSubtle,
                        width: hasFocus ? 1.5 : 1,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: _controllers[i],
                        focusNode: _focuses[i],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.gold,
                        ),
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          filled: false,
                          contentPadding: EdgeInsets.zero,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (v) => _onInput(i, v),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 28),
              // Timer / resend
              _countdown > 0
                  ? Text(
                      'Resend code in 0:${_countdown.toString().padLeft(2, '0')}',
                      style: GoogleFonts.inter(
                          fontSize: 13, color: AppColors.textMuted),
                    )
                  : TextButton(
                      onPressed: _startTimer,
                      child: Text(
                        'Resend code',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: AppColors.gold,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

              const SizedBox(height: 32),
              GoldButton(
                label: 'Verify',
                loading: _loading,
                onPressed: _complete ? _verify : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
