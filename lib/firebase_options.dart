import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('Firebase config para Web não incluído.');
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError('Configuração para iOS não fornecida.');
      default:
        throw UnsupportedError(
          'Configuração Firebase não está disponível para esta plataforma.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvS5uGdbSpg9QnclxXEkjlESK4txUoIh4',
    appId: '1:433279035778:android:e81165906751ef4d25479b',
    messagingSenderId: '433279035778',
    projectId: 'hortiprice-2431a',
    storageBucket: 'hortiprice-2431a.firebasestorage.app',
  );
}
