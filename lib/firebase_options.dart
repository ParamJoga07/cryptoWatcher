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
///

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
    apiKey: 'AIzaSyA1mDhHVTFR59iNRxWh0h5Eu2XkjOcFnkg',
    appId: '1:293544890336:web:dec5cba1f2872b03bea585',
    messagingSenderId: '293544890336',
    projectId: 'authentication-bd35d',
    authDomain: 'authentication-bd35d.firebaseapp.com',
    storageBucket: 'authentication-bd35d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDQ_6oVo4UQCjr9DVRR_xHR9CB_5Bvq4A',
    appId: '1:293544890336:android:3a98f80b2d364aaabea585',
    messagingSenderId: '293544890336',
    projectId: 'authentication-bd35d',
    storageBucket: 'authentication-bd35d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnRp-tl2visVCKOSOcdxnA5zq8TuImz1c',
    appId: '1:293544890336:ios:3235444e9a79fb4cbea585',
    messagingSenderId: '293544890336',
    projectId: 'authentication-bd35d',
    storageBucket: 'authentication-bd35d.appspot.com',
    iosClientId:
        '293544890336-0oie3quda6gd2o7qgp8tce6kgjjnnibs.apps.googleusercontent.com',
    iosBundleId: 'com.example.cryptowatcher',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnRp-tl2visVCKOSOcdxnA5zq8TuImz1c',
    appId: '1:293544890336:ios:4c0e3387810087afbea585',
    messagingSenderId: '293544890336',
    projectId: 'authentication-bd35d',
    storageBucket: 'authentication-bd35d.appspot.com',
    iosClientId:
        '293544890336-v2109g32usm1b022vgt51h5l7jra7d0o.apps.googleusercontent.com',
    iosBundleId: 'com.example.cryptowatcher.RunnerTests',
  );
}
