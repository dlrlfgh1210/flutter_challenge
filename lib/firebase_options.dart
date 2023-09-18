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
    apiKey: 'AIzaSyCff5-32-vJ6kcq7F305rYChOFtym1_87k',
    appId: '1:701828300616:web:8654d65f2e059c1c293d7d',
    messagingSenderId: '701828300616',
    projectId: 'threads-nomadcoder',
    authDomain: 'threads-nomadcoder.firebaseapp.com',
    storageBucket: 'threads-nomadcoder.appspot.com',
    measurementId: 'G-RGZDBZ50XP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaEgs0C7w3LTwIZ57Y17zvPRT_qKXWO_Y',
    appId: '1:701828300616:android:31680552784d3a29293d7d',
    messagingSenderId: '701828300616',
    projectId: 'threads-nomadcoder',
    storageBucket: 'threads-nomadcoder.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSGwM7_eWIrFM0aKaxoba5JZMr6FWmEMY',
    appId: '1:701828300616:ios:af48fabecacd3501293d7d',
    messagingSenderId: '701828300616',
    projectId: 'threads-nomadcoder',
    storageBucket: 'threads-nomadcoder.appspot.com',
    iosBundleId: 'com.example.nomadFlutterChallenge',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSGwM7_eWIrFM0aKaxoba5JZMr6FWmEMY',
    appId: '1:701828300616:ios:1ff178c63045213a293d7d',
    messagingSenderId: '701828300616',
    projectId: 'threads-nomadcoder',
    storageBucket: 'threads-nomadcoder.appspot.com',
    iosBundleId: 'com.example.nomadFlutterChallenge.RunnerTests',
  );
}
