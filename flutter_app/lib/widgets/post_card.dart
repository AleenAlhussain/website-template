import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class PostCard extends StatefulWidget {
  final String authorName;
  final String authorHandle;
  final String authorInitial;
  final String timeAgo;
  final String content;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int shares;
  final bool isVerified;
  final bool isTrending;

  const PostCard({
    super.key,
    required this.authorName,
    required this.authorHandle,
    required this.authorInitial,
    required this.timeAgo,
    required this.content,
    this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
    this.isVerified = false,
    this.isTrending = false,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false;
  bool _saved = false;

  String _formatCount(int n) {
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}K';
    return n.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgBase,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    _avatar(),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.authorName,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              if (widget.isVerified) ...[
                                const SizedBox(width: 4),
                                const Icon(Icons.verified,
                                    color: AppColors.blue, size: 14),
                              ],
                            ],
                          ),
                          Text(
                            '${widget.authorHandle} · ${widget.timeAgo}',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: AppColors.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz,
                          color: AppColors.textMuted, size: 20),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 32),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Content
                Text(
                  widget.content,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                    height: 1.5,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),

                // Image
                if (widget.imageUrl != null) ...[
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: AppColors.bgElevated,
                        child: const Center(
                          child: Icon(Icons.image_outlined,
                              color: AppColors.textMuted, size: 40),
                        ),
                      ),
                    ),
                  ),
                ],

                // AI Trending chip
                if (widget.isTrending) ...[
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: AppColors.blue.withOpacity(0.3)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.auto_awesome,
                            color: AppColors.blue, size: 13),
                        const SizedBox(width: 6),
                        Text(
                          'Trending in your network',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: AppColors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 12),

                // Actions
                Row(
                  children: [
                    _action(
                      icon: _liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      label: _formatCount(
                          widget.likes + (_liked ? 1 : 0)),
                      color: _liked ? AppColors.alert : AppColors.textMuted,
                      onTap: () => setState(() => _liked = !_liked),
                    ),
                    const SizedBox(width: 20),
                    _action(
                      icon: Icons.chat_bubble_outline_rounded,
                      label: _formatCount(widget.comments),
                      onTap: () {},
                    ),
                    const SizedBox(width: 20),
                    _action(
                      icon: Icons.reply_rounded,
                      label: _formatCount(widget.shares),
                      onTap: () {},
                    ),
                    const Spacer(),
                    _action(
                      icon: _saved
                          ? Icons.bookmark_rounded
                          : Icons.bookmark_border_rounded,
                      label: '',
                      color: _saved ? AppColors.gold : AppColors.textMuted,
                      onTap: () => setState(() => _saved = !_saved),
                    ),
                    _action(
                      icon: Icons.monetization_on_outlined,
                      label: '',
                      color: AppColors.emerald,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1, thickness: 0.5),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [AppColors.gold, Color(0xFFFF6B00)],
        ),
      ),
      child: Center(
        child: Container(
          width: 36,
          height: 36,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.bgElevated,
          ),
          child: Center(
            child: Text(
              widget.authorInitial,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.gold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _action({
    required IconData icon,
    required String label,
    Color color = AppColors.textMuted,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          if (label.isNotEmpty) ...[
            const SizedBox(width: 4),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 13,
                color: AppColors.textMuted,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
