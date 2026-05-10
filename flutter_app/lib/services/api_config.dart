// Central place for every API URL.
// Change baseUrl to point at your real backend.
class ApiConfig {
  static const String baseUrl = 'https://mf-myfriend.online/api/v1';

  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String verifyOtp = '/auth/verify-otp';
  static const String resendOtp = '/auth/resend-otp';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';

  // User / Profile
  static const String me = '/user/me';
  static const String updateProfile = '/user/profile';
  static const String uploadAvatar = '/user/avatar';

  // Feed
  static const String feed = '/posts/feed';
  static const String createPost = '/posts';
  static String postById(String id) => '/posts/$id';
  static String likePost(String id) => '/posts/$id/like';
  static String commentPost(String id) => '/posts/$id/comments';

  // Stories
  static const String stories = '/stories';

  // Notifications
  static const String notifications = '/notifications';
  static const String markAllRead = '/notifications/read-all';

  // Wallet / Crypto
  static const String wallet = '/wallet/balance';
  static const String transactions = '/wallet/transactions';
  static String sendCrypto(String id) => '/wallet/send/$id';

  // AI
  static const String aiCaption = '/ai/caption';
  static const String aiFeedInsight = '/ai/feed-insight';
}
