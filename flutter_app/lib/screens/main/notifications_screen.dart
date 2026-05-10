import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with AutomaticKeepAliveClientMixin {
  int _segmentIndex = 0;
  final _segments = ['All', 'Mentions', 'Crypto', 'AI'];

  @override
  bool get wantKeepAlive => true;

  final _todayItems = [
    _NotifItem(
      icon: Icons.favorite_rounded,
      iconColor: AppColors.alert,
      text: 'Layla M. and 47 others liked your post',
      time: '2m',
      type: _NotifType.like,
      unread: true,
    ),
    _NotifItem(
      icon: Icons.chat_bubble_rounded,
      iconColor: AppColors.blue,
      text: 'Ahmed K. commented: "This is exactly what I needed to hear!"',
      time: '15m',
      type: _NotifType.comment,
      unread: true,
    ),
    _NotifItem(
      icon: Icons.toll_rounded,
      iconColor: AppColors.emerald,
      text: 'You received 25 MF Coins from Omar T.',
      time: '1h',
      type: _NotifType.crypto,
      unread: true,
    ),
    _NotifItem(
      icon: Icons.auto_awesome_rounded,
      iconColor: AppColors.blue,
      text: '✦ AI Insight: Your post about DeFi is 3× more engaging than average.',
      time: '2h',
      type: _NotifType.ai,
      unread: false,
    ),
    _NotifItem(
      icon: Icons.person_add_rounded,
      iconColor: AppColors.gold,
      text: 'Sara J. started following you',
      time: '3h',
      type: _NotifType.follow,
      unread: false,
    ),
  ];

  final _weekItems = [
    _NotifItem(
      icon: Icons.favorite_rounded,
      iconColor: AppColors.alert,
      text: 'Your story reached 1,200 views!',
      time: '2d',
      type: _NotifType.like,
      unread: false,
    ),
    _NotifItem(
      icon: Icons.toll_rounded,
      iconColor: AppColors.emerald,
      text: 'Stake reward: +12 MF Coins added to your wallet',
      time: '3d',
      type: _NotifType.crypto,
      unread: false,
    ),
    _NotifItem(
      icon: Icons.event_rounded,
      iconColor: AppColors.gold,
      text: 'MF Tech Summit starts in 2 days. You RSVPed.',
      time: '4d',
      type: _NotifType.event,
      unread: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.bgBase,
      appBar: AppBar(
        backgroundColor: AppColors.bgBase,
        title: Text(
          'Notifications',
          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Mark all read',
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColors.gold,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // Segment tabs
          SliverToBoxAdapter(
            child: Container(
              height: 42,
              margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              decoration: BoxDecoration(
                color: AppColors.bgCard,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.borderSubtle),
              ),
              child: Row(
                children: List.generate(_segments.length, (i) {
                  final active = _segmentIndex == i;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _segmentIndex = i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: active ? AppColors.gold : Colors.transparent,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            _segments[i],
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: active
                                  ? AppColors.textInverse
                                  : AppColors.textMuted,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Today
          _sectionHeader('Today'),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => _notifRow(_todayItems[i]),
              childCount: _todayItems.length,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          // This Week
          _sectionHeader('This Week'),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => _notifRow(_weekItems[i]),
              childCount: _weekItems.length,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }

  SliverToBoxAdapter _sectionHeader(String label) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: AppColors.textMuted,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _notifRow(_NotifItem item) {
    final isAi = item.type == _NotifType.ai;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: item.unread ? AppColors.bgCard : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: isAi
            ? Border(left: BorderSide(color: AppColors.blue, width: 3))
            : Border.all(
                color:
                    item.unread ? AppColors.borderSubtle : Colors.transparent),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: item.iconColor.withOpacity(0.12),
            ),
            child: Icon(item.icon, color: item.iconColor, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.text,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: item.unread
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                    height: 1.5,
                    fontWeight: item.unread ? FontWeight.w500 : FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.time,
                  style: GoogleFonts.inter(
                      fontSize: 11, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
          if (item.unread)
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.gold,
              ),
            ),
        ],
      ),
    );
  }
}

enum _NotifType { like, comment, follow, crypto, ai, event }

class _NotifItem {
  final IconData icon;
  final Color iconColor;
  final String text;
  final String time;
  final _NotifType type;
  final bool unread;

  const _NotifItem({
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.time,
    required this.type,
    required this.unread,
  });
}
