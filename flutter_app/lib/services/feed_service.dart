import '../models/post.dart';
import 'api_client.dart';
import 'api_config.dart';

class FeedService {
  FeedService._();
  static final FeedService instance = FeedService._();

  final _dio = ApiClient.instance.dio;

  // ── Fetch feed (paginated) ─────────────────────────────────────────────────
  Future<List<Post>> getFeed({
    String type = 'for_you', // 'for_you' | 'following'
    int page = 1,
    int limit = 20,
  }) async {
    final res = await _dio.get(
      ApiConfig.feed,
      queryParameters: {'type': type, 'page': page, 'limit': limit},
    );
    final items = res.data['data'] as List<dynamic>;
    return items
        .map((e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // ── Create post ────────────────────────────────────────────────────────────
  Future<Post> createPost({
    required String content,
    String audience = 'public', // 'public' | 'friends' | 'private'
    String? mediaUrl,
    DateTime? scheduledAt,
  }) async {
    final res = await _dio.post(
      ApiConfig.createPost,
      data: {
        'content': content,
        'audience': audience,
        if (mediaUrl != null) 'media_url': mediaUrl,
        if (scheduledAt != null)
          'scheduled_at': scheduledAt.toIso8601String(),
      },
    );
    return Post.fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Like / unlike ──────────────────────────────────────────────────────────
  Future<int> toggleLike(String postId) async {
    final res = await _dio.post(ApiConfig.likePost(postId));
    return res.data['likes_count'] as int;
  }

  // ── Comments ───────────────────────────────────────────────────────────────
  Future<List<Map<String, dynamic>>> getComments(
    String postId, {
    int page = 1,
  }) async {
    final res = await _dio.get(
      ApiConfig.commentPost(postId),
      queryParameters: {'page': page},
    );
    return (res.data['data'] as List<dynamic>)
        .cast<Map<String, dynamic>>();
  }

  Future<void> addComment(String postId, String text) async {
    await _dio.post(
      ApiConfig.commentPost(postId),
      data: {'text': text},
    );
  }
}
