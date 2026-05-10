import 'package:dio/dio.dart';
import 'api_config.dart';
import 'token_storage.dart';

// Single Dio instance used by all services.
// Handles: auth headers, token refresh, error normalisation.
class ApiClient {
  ApiClient._();
  static final ApiClient instance = ApiClient._();

  late final Dio _dio = _buildDio();

  Dio get dio => _dio;

  Dio _buildDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll([
      _AuthInterceptor(dio),
      _ErrorInterceptor(),
      LogInterceptor(requestBody: true, responseBody: true),
    ]);

    return dio;
  }
}

// ── Attach Bearer token to every request ─────────────────────────────────────
class _AuthInterceptor extends Interceptor {
  final Dio _dio;
  _AuthInterceptor(this._dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await TokenStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // On 401, try refreshing once then retry the original request.
    if (err.response?.statusCode == 401) {
      final refreshToken = await TokenStorage.getRefreshToken();
      if (refreshToken == null) {
        await TokenStorage.clearAll();
        handler.next(err);
        return;
      }
      try {
        final res = await _dio.post(
          ApiConfig.refreshToken,
          data: {'refresh_token': refreshToken},
        );
        final newAccess = res.data['access_token'] as String;
        final newRefresh =
            res.data['refresh_token'] as String? ?? refreshToken;
        await TokenStorage.saveTokens(
            access: newAccess, refresh: newRefresh);

        // Retry the original request with the new token.
        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer $newAccess';
        final retried = await _dio.fetch(opts);
        handler.resolve(retried);
        return;
      } catch (_) {
        await TokenStorage.clearAll();
      }
    }
    handler.next(err);
  }
}

// ── Turn DioException into a readable ApiException ───────────────────────────
class _ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final status = err.response?.statusCode;
    final body = err.response?.data;
    final message = (body is Map ? body['message'] : null) ??
        _defaultMessage(err.type);
    handler.next(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        error: ApiException(message: message, statusCode: status),
        type: err.type,
      ),
    );
  }

  String _defaultMessage(DioExceptionType t) => switch (t) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.receiveTimeout =>
          'Request timed out. Check your connection.',
        DioExceptionType.connectionError =>
          'No internet connection.',
        _ => 'Something went wrong. Please try again.',
      };
}

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  const ApiException({required this.message, this.statusCode});

  @override
  String toString() => message;
}
