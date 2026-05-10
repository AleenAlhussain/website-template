import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class NavigationControls extends StatelessWidget {
  final bool canGoBack;
  final bool canGoForward;
  final bool isLoading;
  final VoidCallback onBack;
  final VoidCallback onForward;
  final VoidCallback onRefresh;
  final VoidCallback onHome;

  const NavigationControls({
    super.key,
    required this.canGoBack,
    required this.canGoForward,
    required this.isLoading,
    required this.onBack,
    required this.onForward,
    required this.onRefresh,
    required this.onHome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: const BoxDecoration(
        color: AppColors.bgBase,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _NavButton(
              icon: Icons.arrow_back_ios_rounded,
              onPressed: canGoBack ? onBack : null,
              tooltip: 'Back',
            ),
            _NavButton(
              icon: Icons.arrow_forward_ios_rounded,
              onPressed: canGoForward ? onForward : null,
              tooltip: 'Forward',
            ),
            _NavButton(
              icon: isLoading ? Icons.close_rounded : Icons.refresh_rounded,
              onPressed: onRefresh,
              tooltip: isLoading ? 'Stop' : 'Refresh',
              isActive: isLoading,
            ),
            _NavButton(
              icon: Icons.home_rounded,
              onPressed: onHome,
              tooltip: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String tooltip;
  final bool isActive;

  const _NavButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null;
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Icon(
              icon,
              size: 22,
              color: isActive
                  ? AppColors.gold
                  : isEnabled
                      ? Theme.of(context).iconTheme.color
                      : Colors.grey[400],
            ),
          ),
        ),
      ),
    );
  }
}
