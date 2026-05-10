import 'package:dio/dio.dart';
import '../models/user.dart';
import 'api_client.dart';
import 'api_config.dart';

class UserService {
  UserService._();
  static final UserService instance = UserService._();

  final _dio = ApiClient.instance.dio;

  // ── Get current user ───────────────────────────────────────────────────────
  Future<User> getMe() async {
    final res = await _dio.get(ApiConfig.me);
    return User.fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Update profile ─────────────────────────────────────────────────────────
  Future<User> updateProfile({
    String? name,
    String? bio,
    String? website,
    String? location,
  }) async {
    final res = await _dio.put(
      ApiConfig.updateProfile,
      data: {
        if (name != null) 'name': name,
        if (bio != null) 'bio': bio,
        if (website != null) 'website': website,
        if (location != null) 'location': location,
      },
    );
    return User.fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Upload avatar (multipart) ──────────────────────────────────────────────
  Future<String> uploadAvatar(String filePath) async {
    final formData = FormData.fromMap({
      'avatar': await MultipartFile.fromFile(filePath),
    });
    final res = await _dio.post(ApiConfig.uploadAvatar, data: formData);
    return res.data['avatar_url'] as String;
  }
}
