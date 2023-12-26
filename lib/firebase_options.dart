// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCGbKcuugVNBps01rSJw7Y2wsS_Qhv3Mfw',
    appId: '1:900285412663:web:c362ca2a88cb5dea4ed6b2',
    messagingSenderId: '900285412663',
    projectId: 'flutter-c20a0',
    authDomain: 'flutter-c20a0.firebaseapp.com',
    storageBucket: 'flutter-c20a0.appspot.com',
    measurementId: 'G-1LC1NQ1V4Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsS-RzX-b64O5suuZyuTEPmJfah2Mo_c8',
    appId: '1:900285412663:android:3fe7535b3fd2ffd34ed6b2',
    messagingSenderId: '900285412663',
    projectId: 'flutter-c20a0',
    storageBucket: 'flutter-c20a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxc80iaUQUNiqpNzGYDGpDI9wK1MUs9Yk',
    appId: '1:900285412663:ios:ed72bb133eded6054ed6b2',
    messagingSenderId: '900285412663',
    projectId: 'flutter-c20a0',
    storageBucket: 'flutter-c20a0.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxc80iaUQUNiqpNzGYDGpDI9wK1MUs9Yk',
    appId: '1:900285412663:ios:be4ae678420df0a24ed6b2',
    messagingSenderId: '900285412663',
    projectId: 'flutter-c20a0',
    storageBucket: 'flutter-c20a0.appspot.com',
    iosBundleId: 'com.example.flutterApplication2.RunnerTests',
  );
}
