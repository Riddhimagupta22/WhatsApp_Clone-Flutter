// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBLECSzx1-jjPIjhqKY7npTZ0BbPZPxq30',
    appId: '1:952344316308:web:8ebad4b90e6daeeffae781',
    messagingSenderId: '952344316308',
    projectId: 'whats-clone-39109',
    authDomain: 'whats-clone-39109.firebaseapp.com',
    storageBucket: 'whats-clone-39109.firebasestorage.app',
    measurementId: 'G-TM8JKJK1Y7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzr0EcCVRbLb5rpBK-2RgBiqQ1otlEs9Y',
    appId: '1:952344316308:android:51a9a3212aba170afae781',
    messagingSenderId: '952344316308',
    projectId: 'whats-clone-39109',
    storageBucket: 'whats-clone-39109.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDL5XS5AgsOoXwHtZLWT8LWHk5iXUv6kvI',
    appId: '1:952344316308:ios:6bd5a48726e30874fae781',
    messagingSenderId: '952344316308',
    projectId: 'whats-clone-39109',
    storageBucket: 'whats-clone-39109.firebasestorage.app',
    iosBundleId: 'com.example.appClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDL5XS5AgsOoXwHtZLWT8LWHk5iXUv6kvI',
    appId: '1:952344316308:ios:6bd5a48726e30874fae781',
    messagingSenderId: '952344316308',
    projectId: 'whats-clone-39109',
    storageBucket: 'whats-clone-39109.firebasestorage.app',
    iosBundleId: 'com.example.appClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLECSzx1-jjPIjhqKY7npTZ0BbPZPxq30',
    appId: '1:952344316308:web:fb3d1423a2614056fae781',
    messagingSenderId: '952344316308',
    projectId: 'whats-clone-39109',
    authDomain: 'whats-clone-39109.firebaseapp.com',
    storageBucket: 'whats-clone-39109.firebasestorage.app',
    measurementId: 'G-HD9LQ1SG0B',
  );
}
