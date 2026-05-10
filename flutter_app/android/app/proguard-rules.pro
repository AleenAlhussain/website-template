# Flutter
-keep class io.flutter.** { *; }
-keep class io.flutter.embedding.** { *; }
-dontwarn io.flutter.embedding.**
-keep class io.flutter.plugin.** { *; }

# WebView — prevent R8 from stripping classes used at runtime
-keep class android.webkit.** { *; }
-keep class com.android.webview.** { *; }
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
    public boolean *(android.webkit.WebView, java.lang.String);
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, javalangt.String);
}

# webview_flutter plugin
-keep class io.flutter.plugins.webviewflutter.** { *; }
-dontwarn io.flutter.plugins.webviewflutter.**

# JavaScript interface (needed for WebView <-> Dart communication)
-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# Kotlin
-keep class kotlin.** { *; }
-dontwarn kotlin.**

# OkHttp / Dio networking
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# General
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception
