class AppConstants {
  static const String appName = 'MF-MYFRIEND';
  static const String appTagline = 'Connect. Earn. Evolve.';
  static const String baseUrl = 'https://mf-myfriend.online/';

  // Tab URLs
  static const String homeUrl = baseUrl;
  static const String exploreUrl = '${baseUrl}explore';
  static const String notificationsUrl = '${baseUrl}notifications';
  static const String profileUrl = '${baseUrl}profile';
  static const String messagesUrl = '${baseUrl}messages';

  // Auth
  static const String keyOnboarded = 'mf_onboarded';
  static const String keyLoggedIn = 'mf_logged_in';

  // UI
  static const String noConnectionTitle = 'No Internet Connection';
  static const String noConnectionMessage =
      'Please check your connection and try again.';

  static const Duration splashDuration = Duration(milliseconds: 2800);
}
