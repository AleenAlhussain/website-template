import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors.dart';

class CreatePostSheet extends StatefulWidget {
  const CreatePostSheet({super.key});

  @override
  State<CreatePostSheet> createState() => _CreatePostSheetState();
}

class _CreatePostSheetState extends State<CreatePostSheet> {
  final _ctrl = TextEditingController();
  String _audience = 'Public';
  bool _aiAssist = false;
  String? _aiDraft;

  final _mediaOptions = [
    (Icons.photo_library_rounded, 'Photo', AppColors.emerald),
    (Icons.videocam_rounded, 'Video', AppColors.blue),
    (Icons.poll_rounded, 'Poll', AppColors.gold),
    (Icons.location_on_rounded, 'Location', AppColors.alert),
    (Icons.emoji_emotions_rounded, 'Mood', AppColors.textSecondary),
  ];

  Future<void> _generateCaption() async {
    setState(() => _aiAssist = true);
    await Future.delayed(const Duration(milliseconds: 1200));
    setState(() {
      _aiDraft =
          "Just experienced something truly remarkable today — the intersection of technology and human connection never ceases to amaze me. What's your take? 🚀 #MFMyfriend #Tech #Community";
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      margin: EdgeInsets.only(bottom: bottomPad),
      decoration: const BoxDecoration(
        color: AppColors.bgElevated,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              width: 36,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.textMuted,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _avatar(),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() => _audience =
                              _audience == 'Public' ? 'Friends' : 'Public'),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _audience == 'Public'
                                    ? Icons.public_rounded
                                    : Icons.people_rounded,
                                size: 13,
                                color: AppColors.gold,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '$_audience ▾',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: AppColors.gold,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close_rounded,
                        color: AppColors.textMuted),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // AI draft
            if (_aiDraft != null)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.blue.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.blue.withOpacity(0.2)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.auto_awesome_rounded,
                            color: AppColors.blue, size: 14),
                        const SizedBox(width: 6),
                        Text(
                          'AI Suggestion',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _aiDraft!,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _chipBtn('Use this', AppColors.gold, () {
                          _ctrl.text = _aiDraft!;
                          setState(() => _aiDraft = null);
                        }),
                        const SizedBox(width: 8),
                        _chipBtn('Regenerate', AppColors.blue, _generateCaption),
                        const SizedBox(width: 8),
                        _chipBtn('Dismiss', AppColors.textMuted,
                            () => setState(() => _aiDraft = null)),
                      ],
                    ),
                  ],
                ),
              ),

            // Text input
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: TextField(
                controller: _ctrl,
                maxLines: 4,
                minLines: 3,
                autofocus: true,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  color: AppColors.textPrimary,
                  height: 1.5,
                ),
                decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  hintStyle: GoogleFonts.inter(
                    color: AppColors.textMuted,
                    fontSize: 15,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: false,
                ),
              ),
            ),

            // Media options
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  ..._mediaOptions.map(
                    (opt) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: _mediaChip(opt.$1, opt.$2, opt.$3),
                    ),
                  ),
                  _aiChip(),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(height: 1),

            // Bottom actions
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.schedule_rounded,
                            color: AppColors.textMuted, size: 18),
                        const SizedBox(width: 6),
                        Text(
                          'Schedule',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            color: AppColors.textMuted,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(0, 40),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                    ),
                    child: Text(
                      'Post →',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
      child: const Center(
        child: Text(
          'Y',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.textInverse,
          ),
        ),
      ),
    );
  }

  Widget _mediaChip(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 6),
          Text(
            label,
            style: GoogleFonts.inter(
                fontSize: 12, color: color, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _aiChip() {
    return GestureDetector(
      onTap: _generateCaption,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: AppColors.bgCard,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.blue.withOpacity(0.4)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _aiAssist && _aiDraft == null
                ? const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.5,
                      color: AppColors.blue,
                    ),
                  )
                : const Icon(Icons.auto_awesome_rounded,
                    color: AppColors.blue, size: 15),
            const SizedBox(width: 6),
            Text(
              'AI ✦',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chipBtn(String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: color.withOpacity(0.12),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
              fontSize: 11, color: color, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
