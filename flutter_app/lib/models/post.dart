class Post {
  final String id;
  final String authorName;
  final String authorHandle;
  final String authorInitial;
  final String? authorAvatarUrl;
  final bool authorVerified;
  final String content;
  final String? mediaUrl;
  final String timeAgo;
  final int likes;
  final int comments;
  final int shares;
  final bool isLiked;
  final bool isSaved;
  final bool isTrending;

  const Post({
    required this.id,
    required this.authorName,
    required this.authorHandle,
    required this.authorInitial,
    this.authorAvatarUrl,
    required this.authorVerified,
    required this.content,
    this.mediaUrl,
    required this.timeAgo,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.isLiked,
    required this.isSaved,
    required this.isTrending,
  });

  factory Post.fromJson(Map<String, dynamic> j) {
    final author = j['author'] as Map<String, dynamic>;
    final name = author['name'] as String;
    return Post(
      id: j['id'] as String,
      authorName: name,
      authorHandle: '@${author['handle']}',
      authorInitial: name.isNotEmpty ? name[0].toUpperCase() : '?',
      authorAvatarUrl: author['avatar_url'] as String?,
      authorVerified: author['is_verified'] as bool? ?? false,
      content: j['content'] as String,
      mediaUrl: j['media_url'] as String?,
      timeAgo: j['time_ago'] as String? ?? '',
      likes: j['likes_count'] as int? ?? 0,
      comments: j['comments_count'] as int? ?? 0,
      shares: j['shares_count'] as int? ?? 0,
      isLiked: j['is_liked'] as bool? ?? false,
      isSaved: j['is_saved'] as bool? ?? false,
      isTrending: j['is_trending'] as bool? ?? false,
    );
  }
}
