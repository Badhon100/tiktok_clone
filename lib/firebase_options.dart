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
    apiKey: 'AIzaSyAG7KXbEAeXzHqGe-lPigzvm2xOVRcVbBQ',
    appId: '1:1098149048389:web:261775fac31a77bb16f32c',
    messagingSenderId: '1098149048389',
    projectId: 'tiktok-clone-2a013',
    authDomain: 'tiktok-clone-2a013.firebaseapp.com',
    storageBucket: 'tiktok-clone-2a013.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6yNgv5vvg4w8S0AIDmOFu0fNifVONzew',
    appId: '1:1098149048389:android:07366d0b5e17460616f32c',
    messagingSenderId: '1098149048389',
    projectId: 'tiktok-clone-2a013',
    storageBucket: 'tiktok-clone-2a013.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEhvzdLyl2qjM7iAZ4V-qxZ4_T2YSTmXk',
    appId: '1:1098149048389:ios:db3ff9c8c3617fb016f32c',
    messagingSenderId: '1098149048389',
    projectId: 'tiktok-clone-2a013',
    storageBucket: 'tiktok-clone-2a013.appspot.com',
    iosClientId: '1098149048389-tsbder0na6nkat4svcuech35ohfketoc.apps.googleusercontent.com',
    iosBundleId: 'com.example.tiktokClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEhvzdLyl2qjM7iAZ4V-qxZ4_T2YSTmXk',
    appId: '1:1098149048389:ios:3d4f81eca35a148616f32c',
    messagingSenderId: '1098149048389',
    projectId: 'tiktok-clone-2a013',
    storageBucket: 'tiktok-clone-2a013.appspot.com',
    iosClientId: '1098149048389-sm8dgulp2qen5fo5qqu6omcvs0lsa3uc.apps.googleusercontent.com',
    iosBundleId: 'com.example.tiktokClone.RunnerTests',
  );
}
