import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../utils/constants.dart';
import 'api_client.dart';
import 'api_config.dart';
import 'token_storage.dart';

class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  final _dio = ApiClient.instance.dio;

  // ── Login ──────────────────────────────────────────────────────────────────
  Future<User> login({
    required String email,
    required String password,
  }) async {
    final res = await _dio.post(
      ApiConfig.login,
      data: {'email': email, 'password': password},
    );

    await TokenStorage.saveTokens(
      access: res.data['access_token'] as String,
      refresh: res.data['refresh_token'] as String,
    );

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyLoggedIn, true);

    return User.fromJson(res.data['user'] as Map<String, dynamic>);
  }

  // ── Register ───────────────────────────────────────────────────────────────
  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    await _dio.post(
      ApiConfig.register,
      data: {'name': name, 'email': email, 'password': password},
    );
    // Server sends an OTP to the email/phone — no token yet.
  }

  // ── Verify OTP ─────────────────────────────────────────────────────────────
  Future<User> verifyOtp({
    required String contact,
    required String code,
  }) async {
    final res = await _dio.post(
      ApiConfig.verifyOtp,
      data: {'contact': contact, 'code': code},
    );

    await TokenStorage.saveTokens(
      access: res.data['access_token'] as String,
      refresh: res.data['refresh_token'] as String,
    );

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyLoggedIn, true);

    return User.fromJson(res.data['user'] as Map<String, dynamic>);
  }

  // ── Resend OTP ─────────────────────────────────────────────────────────────
  Future<void> resendOtp(String contact) async {
    await _dio.post(ApiConfig.resendOtp, data: {'contact': contact});
  }

  // ── Logout ─────────────────────────────────────────────────────────────────
  Future<void> logout() async {
    try {
      await _dio.post(ApiConfig.logout);
    } catch (_) {
      // Best-effort — always clear local state.
    }
    await TokenStorage.clearAll();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyLoggedIn, false);
  }
}
