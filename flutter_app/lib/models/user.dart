class User {
  final String id;
  final String name;
  final String handle;
  final String email;
  final String? avatarUrl;
  final String? bio;
  final bool isVerified;
  final int followers;
  final int following;
  final int posts;
  final double mfCoins;

  const User({
    required this.id,
    required this.name,
    required this.handle,
    required this.email,
    this.avatarUrl,
    this.bio,
    required this.isVerified,
    required this.followers,
    required this.following,
    required this.posts,
    required this.mfCoins,
  });

  factory User.fromJson(Map<String, dynamic> j) => User(
        id: j['id'] as String,
        name: j['name'] as String,
        handle: j['handle'] as String,
        email: j['email'] as String,
        avatarUrl: j['avatar_url'] as String?,
        bio: j['bio'] as String?,
        isVerified: j['is_verified'] as bool? ?? false,
        followers: j['followers_count'] as int? ?? 0,
        following: j['following_count'] as int? ?? 0,
        posts: j['posts_count'] as int? ?? 0,
        mfCoins: (j['mf_coins'] as num?)?.toDouble() ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'handle': handle,
        'email': email,
        'avatar_url': avatarUrl,
        'bio': bio,
        'is_verified': isVerified,
        'followers_count': followers,
        'following_count': following,
        'posts_count': posts,
        'mf_coins': mfCoins,
      };
}
