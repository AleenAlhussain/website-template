import 'api_client.dart';
import 'api_config.dart';

class AiService {
  AiService._();
  static final AiService instance = AiService._();

  final _dio = ApiClient.instance.dio;

  // ── Generate post caption ──────────────────────────────────────────────────
  Future<({String caption, List<String> hashtags})> generateCaption(
    String topic,
  ) async {
    final res = await _dio.post(
      ApiConfig.aiCaption,
      data: {'topic': topic},
    );
    final d = res.data['data'] as Map<String, dynamic>;
    return (
      caption: d['caption'] as String,
      hashtags: (d['hashtags'] as List<dynamic>).cast<String>(),
    );
  }

  // ── Feed insight ───────────────────────────────────────────────────────────
  Future<String> getFeedInsight() async {
    final res = await _dio.get(ApiConfig.aiFeedInsight);
    return res.data['insight'] as String;
  }
}
