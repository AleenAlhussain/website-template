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
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      decoration: BoxDecoration(
        color: AppColors.bgCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderSubtle, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header row
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
                              Flexible(
                                child: Text(
                                  widget.authorName,
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textPrimary,
                                  ),
                                  overflow: TextOverflow.ellipsis,
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
                    height: 1.55,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),

                // Image placeholder
                if (widget.imageUrl != null) ...[
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
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
                      color: AppColors.blue.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: AppColors.blue.withOpacity(0.25)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.auto_awesome,
                            color: AppColors.blue, size: 12),
                        const SizedBox(width: 6),
                        Text(
                          'Trending in your network',
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: AppColors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 12),

                // Divider
                Container(
                  height: 0.5,
                  color: AppColors.borderSubtle,
                ),
                const SizedBox(height: 10),

                // Actions row
                Row(
                  children: [
                    _action(
                      icon: _liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      label: _formatCount(widget.likes + (_liked ? 1 : 0)),
                      color: _liked ? AppColors.alert : AppColors.textMuted,
                      onTap: () => setState(() => _liked = !_liked),
                    ),
                    const SizedBox(width: 18),
                    _action(
                      icon: Icons.chat_bubble_outline_rounded,
                      label: _formatCount(widget.comments),
                      onTap: () {},
                    ),
                    const SizedBox(width: 18),
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
                    const SizedBox(width: 4),
                    _action(
                      icon: Icons.toll_rounded,
                      label: '',
                      color: AppColors.emerald,
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [AppColors.gold, Color(0xFFE07800)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Container(
          width: 36,
          height: 36,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.bgCard,
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 19, color: color),
          if (label.isNotEmpty) ...[
            const SizedBox(width: 5),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColors.textMuted,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
