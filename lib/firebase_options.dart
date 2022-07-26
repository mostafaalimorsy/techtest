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
    apiKey: 'AIzaSyCeY-4_CgrXBiok26HRECZssZIJ2JzT8bc',
    appId: '1:899615097205:web:011aaf4b2802207c11d33c',
    messagingSenderId: '899615097205',
    projectId: 'techtest-11268',
    authDomain: 'techtest-11268.firebaseapp.com',
    storageBucket: 'techtest-11268.appspot.com',
    measurementId: 'G-MXG4RBNP6W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB123k85Ak9laA-wspoSsoLfLZMp8jEgwI',
    appId: '1:899615097205:android:1eb836512fff936c11d33c',
    messagingSenderId: '899615097205',
    projectId: 'techtest-11268',
    storageBucket: 'techtest-11268.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEtB6JKanuzpnzHjOZMDfJwXTroBFDg-M',
    appId: '1:899615097205:ios:8bcaed90e7e5578511d33c',
    messagingSenderId: '899615097205',
    projectId: 'techtest-11268',
    storageBucket: 'techtest-11268.appspot.com',
    iosClientId: '899615097205-k8fi2s7jrat67h05nu01eb2tmc2uak3m.apps.googleusercontent.com',
    iosBundleId: 'com.example.techtest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEtB6JKanuzpnzHjOZMDfJwXTroBFDg-M',
    appId: '1:899615097205:ios:8bcaed90e7e5578511d33c',
    messagingSenderId: '899615097205',
    projectId: 'techtest-11268',
    storageBucket: 'techtest-11268.appspot.com',
    iosClientId: '899615097205-k8fi2s7jrat67h05nu01eb2tmc2uak3m.apps.googleusercontent.com',
    iosBundleId: 'com.example.techtest',
  );
}
