import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Stores JWT tokens in the device's encrypted keychain / keystore.
class TokenStorage {
  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  static const _accessKey = 'mf_access_token';
  static const _refreshKey = 'mf_refresh_token';

  static Future<void> saveTokens({
    required String access,
    required String refresh,
  }) async {
    await Future.wait([
      _storage.write(key: _accessKey, value: access),
      _storage.write(key: _refreshKey, value: refresh),
    ]);
  }

  static Future<String?> getAccessToken() =>
      _storage.read(key: _accessKey);

  static Future<String?> getRefreshToken() =>
      _storage.read(key: _refreshKey);

  static Future<void> clearAll() async {
    await Future.wait([
      _storage.delete(key: _accessKey),
      _storage.delete(key: _refreshKey),
    ]);
  }
}
