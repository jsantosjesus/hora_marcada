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
    apiKey: 'AIzaSyDfr5zgToe2DUkn9tA4o6poEZTHSozak9A',
    appId: '1:848568625713:web:bad75c90de2e699ad24310',
    messagingSenderId: '848568625713',
    projectId: 'horamarcada-fd56a',
    authDomain: 'horamarcada-fd56a.firebaseapp.com',
    storageBucket: 'horamarcada-fd56a.appspot.com',
    measurementId: 'G-2VR6J4FBR3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqpdEOJt8FbIzy6iL3ojZ0HsDG-NwT6u0',
    appId: '1:848568625713:android:0151ece1af3167a0d24310',
    messagingSenderId: '848568625713',
    projectId: 'horamarcada-fd56a',
    storageBucket: 'horamarcada-fd56a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADrrqT_7_D3XC_73FSMeAxIFFTy0FrNoI',
    appId: '1:848568625713:ios:c63b911fafeb79a4d24310',
    messagingSenderId: '848568625713',
    projectId: 'horamarcada-fd56a',
    storageBucket: 'horamarcada-fd56a.appspot.com',
    iosBundleId: 'com.example.horaMarcada',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADrrqT_7_D3XC_73FSMeAxIFFTy0FrNoI',
    appId: '1:848568625713:ios:d28343b57bc8ebcbd24310',
    messagingSenderId: '848568625713',
    projectId: 'horamarcada-fd56a',
    storageBucket: 'horamarcada-fd56a.appspot.com',
    iosBundleId: 'com.example.horaMarcada.RunnerTests',
  );
}
