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
    apiKey: 'AIzaSyDRTDFAR9ZzXPu6aBSK-oMXIqDf3ekThQ8',
    appId: '1:316335916241:web:2098c457cfd71ce75131f0',
    messagingSenderId: '316335916241',
    projectId: 'firebse-2-39cc7',
    authDomain: 'firebse-2-39cc7.firebaseapp.com',
    storageBucket: 'firebse-2-39cc7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCayOZ3RZXuC_j1fzxYy2MtDwLlXUGBNPw',
    appId: '1:316335916241:android:591aff5584b495f45131f0',
    messagingSenderId: '316335916241',
    projectId: 'firebse-2-39cc7',
    storageBucket: 'firebse-2-39cc7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDemGjxoDJO04xSRKoKTh_FzhML128f6Lo',
    appId: '1:316335916241:ios:a61b8f2fd57b791a5131f0',
    messagingSenderId: '316335916241',
    projectId: 'firebse-2-39cc7',
    storageBucket: 'firebse-2-39cc7.appspot.com',
    androidClientId: '316335916241-7c0eds8ae7dclo366vjr2hkrf327cfgn.apps.googleusercontent.com',
    iosClientId: '316335916241-7bmqn8tv8nb9a2918huj9lmmjbsk94uo.apps.googleusercontent.com',
    iosBundleId: 'com.swi.swichat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDemGjxoDJO04xSRKoKTh_FzhML128f6Lo',
    appId: '1:316335916241:ios:965fac8bcf75eeb05131f0',
    messagingSenderId: '316335916241',
    projectId: 'firebse-2-39cc7',
    storageBucket: 'firebse-2-39cc7.appspot.com',
    androidClientId: '316335916241-7c0eds8ae7dclo366vjr2hkrf327cfgn.apps.googleusercontent.com',
    iosClientId: '316335916241-ldfsn503aodagscnrjia08silt5lctob.apps.googleusercontent.com',
    iosBundleId: 'com.swi.swichat.RunnerTests',
  );
}