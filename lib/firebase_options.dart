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
    apiKey: 'AIzaSyBsALCUdD668JQWvTg3948oHiZHHp_n6ms',
    appId: '1:315837156940:web:0ba0d040c5b7a3a789eee9',
    messagingSenderId: '315837156940',
    projectId: 'cinema1booking1ticket',
    authDomain: 'cinema1booking1ticket.firebaseapp.com',
    storageBucket: 'cinema1booking1ticket.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb57F42D_LpkaxJS8Uzp4Xn1vHRR8Ol0A',
    appId: '1:315837156940:android:116451ef5b2224a689eee9',
    messagingSenderId: '315837156940',
    projectId: 'cinema1booking1ticket',
    storageBucket: 'cinema1booking1ticket.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOT8Mx5uNqczlZNp8RwU4jOJD7IMSnECU',
    appId: '1:315837156940:ios:61af95997b104d2189eee9',
    messagingSenderId: '315837156940',
    projectId: 'cinema1booking1ticket',
    storageBucket: 'cinema1booking1ticket.appspot.com',
    iosClientId: '315837156940-bljru4aflmi4os6sfil38lteeklojev0.apps.googleusercontent.com',
    iosBundleId: 'com.CBA.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOT8Mx5uNqczlZNp8RwU4jOJD7IMSnECU',
    appId: '1:315837156940:ios:61af95997b104d2189eee9',
    messagingSenderId: '315837156940',
    projectId: 'cinema1booking1ticket',
    storageBucket: 'cinema1booking1ticket.appspot.com',
    iosClientId: '315837156940-bljru4aflmi4os6sfil38lteeklojev0.apps.googleusercontent.com',
    iosBundleId: 'com.CBA.project',
  );
}
