import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class LoadingOverlay extends StatelessWidget {
  final double progress;

  const LoadingOverlay({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    if (progress >= 1.0) return const SizedBox.shrink();
    return Positioned.fill(
      child: IgnorePointer(
        child: AnimatedOpacity(
          opacity: progress < 0.1 ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: Container(
            color: AppColors.bgBase,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.bgCard,
                      border: Border.all(
                          color: AppColors.borderSubtle, width: 1),
                    ),
                    child: const Center(
                      child: Text(
                        'MF',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: AppColors.gold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const SizedBox(
                    width: 28,
                    height: 28,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.gold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
