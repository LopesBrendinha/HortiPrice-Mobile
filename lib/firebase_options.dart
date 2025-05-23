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
    apiKey: 'AIzaSyDlBeZ20VWPc9-GWIUN-vRGm2pzddp5KHk',
    appId: '1:327897573367:web:00710a45237a9af69ef0f2',
    messagingSenderId: '327897573367',
    projectId: 'hortiprice-mobile',
    authDomain: 'hortiprice-mobile.firebaseapp.com',
    storageBucket: 'hortiprice-mobile.firebasestorage.app',
    measurementId: 'G-XHPPWKMM0T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvRg-Y7Fl-NjFDJ7xB_nPVClYP5-aA9cQ',
    appId: '1:327897573367:android:afc6602b5ecc7b499ef0f2',
    messagingSenderId: '327897573367',
    projectId: 'hortiprice-mobile',
    storageBucket: 'hortiprice-mobile.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHPJqmWUtdZZyRhRZo4Rdb7BB8QXSr_lE',
    appId: '1:327897573367:ios:32cb33cf5676549a9ef0f2',
    messagingSenderId: '327897573367',
    projectId: 'hortiprice-mobile',
    storageBucket: 'hortiprice-mobile.firebasestorage.app',
    iosBundleId: 'com.example.hortipricemobile',
  );
}
