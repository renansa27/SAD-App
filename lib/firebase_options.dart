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
    apiKey: 'AIzaSyA59ZZUO5AldfyupS_ML_wejj66FgkfG90',
    appId: '1:735607833348:web:ab10969ca9b479292b8651',
    messagingSenderId: '735607833348',
    projectId: 'sad-app-f016b',
    authDomain: 'sad-app-f016b.firebaseapp.com',
    storageBucket: 'sad-app-f016b.firebasestorage.app',
    measurementId: 'G-5G1Y5GPEKB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIVV35nQpYNBrfnAEwiClPq8RH10tVhos',
    appId: '1:735607833348:android:a9f47a25db5601cd2b8651',
    messagingSenderId: '735607833348',
    projectId: 'sad-app-f016b',
    storageBucket: 'sad-app-f016b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUEQ5qwAqecnHHvW8smcfDLEQTHREmr5Y',
    appId: '1:735607833348:ios:dacef466966c05ba2b8651',
    messagingSenderId: '735607833348',
    projectId: 'sad-app-f016b',
    storageBucket: 'sad-app-f016b.firebasestorage.app',
    iosBundleId: 'com.org.sadapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUEQ5qwAqecnHHvW8smcfDLEQTHREmr5Y',
    appId: '1:735607833348:ios:ede110f309316a412b8651',
    messagingSenderId: '735607833348',
    projectId: 'sad-app-f016b',
    storageBucket: 'sad-app-f016b.firebasestorage.app',
    iosBundleId: 'com.example.sadApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA59ZZUO5AldfyupS_ML_wejj66FgkfG90',
    appId: '1:735607833348:web:b69efab743edf7b82b8651',
    messagingSenderId: '735607833348',
    projectId: 'sad-app-f016b',
    authDomain: 'sad-app-f016b.firebaseapp.com',
    storageBucket: 'sad-app-f016b.firebasestorage.app',
    measurementId: 'G-8G2H7B59VH',
  );
}
