import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class StoryCircle extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final bool isOwn;
  final bool isSeen;
  final VoidCallback? onTap;

  const StoryCircle({
    super.key,
    required this.name,
    this.imageUrl,
    this.isOwn = false,
    this.isSeen = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 72,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Story ring gradient
                Container(
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: isSeen
                        ? null
                        : const LinearGradient(
                            colors: [AppColors.gold, Color(0xFFFF6B00)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                    color: isSeen ? AppColors.bgElevated : null,
                    border: isSeen
                        ? Border.all(color: AppColors.textMuted, width: 2)
                        : null,
                  ),
                ),
                // Avatar
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.bgCard,
                    border: Border.all(color: AppColors.bgBase, width: 2),
                  ),
                  child: isOwn
                      ? const Icon(Icons.add, color: AppColors.gold, size: 22)
                      : ClipOval(
                          child: imageUrl != null
                              ? Image.network(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => _initials(),
                                )
                              : _initials(),
                        ),
                ),
                if (isOwn)
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: AppColors.gold,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: AppColors.textInverse,
                        size: 12,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              name.length > 9 ? '${name.substring(0, 8)}…' : name,
              style: GoogleFonts.inter(
                fontSize: 10,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _initials() {
    return Container(
      color: AppColors.bgElevated,
      alignment: Alignment.center,
      child: Text(
        name.isNotEmpty ? name[0].toUpperCase() : '?',
        style: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
