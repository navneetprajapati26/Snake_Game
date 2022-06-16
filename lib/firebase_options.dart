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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC4CFbl943h-0YO_Fba-7JLyqtuvRNW-N4',
    appId: '1:542652641445:web:1ce7136d1df92b0bda1d4c',
    messagingSenderId: '542652641445',
    projectId: 'snake-game-16e81',
    authDomain: 'snake-game-16e81.firebaseapp.com',
    storageBucket: 'snake-game-16e81.appspot.com',
    measurementId: 'G-8WFBBMK9FK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhd_SVXZ2ye850mm-BD2EnZO8xpMaj5eg',
    appId: '1:542652641445:android:3300e80a1f9bcd18da1d4c',
    messagingSenderId: '542652641445',
    projectId: 'snake-game-16e81',
    storageBucket: 'snake-game-16e81.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlrSD7jArKTgh1gFvB2geEY3scxxUSHNc',
    appId: '1:542652641445:ios:e134601102d84693da1d4c',
    messagingSenderId: '542652641445',
    projectId: 'snake-game-16e81',
    storageBucket: 'snake-game-16e81.appspot.com',
    iosClientId: '542652641445-41vhh2t19vtbsiopfie8edfon9ishqk2.apps.googleusercontent.com',
    iosBundleId: 'com.example.snakeGame',
  );
}
