# MyFriend Flutter App

A professional Flutter application that wraps the [MyFriend](https://mf-myfriend.online/) social media platform in a native mobile experience.

## Features

- **Animated Splash Screen** — gradient intro with logo animation and progress indicator
- **Full WebView Integration** — loads `https://mf-myfriend.online/` with full JS support
- **Bottom Navigation Bar** — Back, Forward, Refresh/Stop, and Home controls
- **Side Drawer Menu** — quick access to Home, Profile, Notifications, Messages, Groups, Pages, Settings
- **Connection Error Screen** — animated no-internet screen with retry logic and troubleshooting tips
- **Page Load Error Handling** — graceful error view with Try Again and Go Home actions
- **Live Loading Progress** — top linear progress bar during page loads
- **Real-time Connectivity Monitoring** — auto-redirects to error screen when connection drops
- **Dark Mode Support** — full Material 3 light/dark theming
- **Responsive Layout** — adapts to all screen sizes and orientations
- **Security** — HTTPS enforced, network security config, safe navigation delegate

## Tech Stack

| Layer | Package |
|-------|---------|
| WebView | `webview_flutter ^4.10.0` |
| Connectivity | `connectivity_plus ^6.1.0` |
| Animations | `flutter_animate ^4.5.0` |
| Links | `url_launcher ^6.3.0` |

## Project Structure

```
lib/
├── main.dart                    # App entry, theme setup
├── utils/
│   ├── app_theme.dart           # Material 3 light/dark themes
│   └── constants.dart           # URL, strings, durations
├── screens/
│   ├── splash_screen.dart       # Animated loading intro
│   ├── webview_screen.dart      # Main WebView + drawer + app bar
│   └── no_connection_screen.dart # Offline error screen
└── widgets/
    ├── navigation_controls.dart  # Bottom nav bar widget
    └── loading_overlay.dart      # Initial page load overlay
```

## Getting Started

### Prerequisites

- Flutter SDK ≥ 3.0.0
- Android SDK (API 21+) or Xcode 14+ for iOS 12+

### Setup

```bash
cd flutter_app
flutter pub get
flutter run
```

### Build

```bash
# Android APK
flutter build apk --release

# Android App Bundle (Play Store)
flutter build appbundle --release

# iOS
flutter build ios --release
```

## Platform Configuration

### Android
- `minSdkVersion`: 21 (Android 5.0+)
- Internet, camera, and storage permissions declared
- Network security config enforces HTTPS for the target domain
- Hardware acceleration enabled for smooth WebView rendering

### iOS
- Deployment target: iOS 12.0+
- `NSAppTransportSecurity` configured to allow only the target domain
- Camera, photo library, and microphone usage descriptions included
- `io.flutter.embedded_views_preview` enabled for WebView

## Security Considerations

- HTTPS enforced via Android `network_security_config.xml`
- `NSAllowsArbitraryLoads` set to `false` on iOS
- Navigation delegate validates URLs before loading
- JavaScript channels scoped to the app
