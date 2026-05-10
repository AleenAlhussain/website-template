import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

enum MFButtonStyle { primary, secondary, ghost, danger }

class GoldButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final MFButtonStyle style;
  final IconData? icon;
  final bool loading;
  final double height;

  const GoldButton({
    super.key,
    required this.label,
    this.onPressed,
    this.style = MFButtonStyle.primary,
    this.icon,
    this.loading = false,
    this.height = 52,
  });

  @override
  Widget build(BuildContext context) {
    final child = loading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppColors.textInverse,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18),
                const SizedBox(width: 8),
              ],
              Text(label),
            ],
          );

    switch (style) {
      case MFButtonStyle.primary:
        return SizedBox(
          height: height,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: loading ? null : onPressed,
            child: child,
          ),
        );
      case MFButtonStyle.secondary:
        return SizedBox(
          height: height,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: loading ? null : onPressed,
            child: child,
          ),
        );
      case MFButtonStyle.ghost:
        return SizedBox(
          height: height,
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.textPrimary,
              backgroundColor: AppColors.borderSubtle,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: loading ? null : onPressed,
            child: child,
          ),
        );
      case MFButtonStyle.danger:
        return SizedBox(
          height: height,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.alert,
              foregroundColor: Colors.white,
            ),
            onPressed: loading ? null : onPressed,
            child: child,
          ),
        );
    }
  }
}
