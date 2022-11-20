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
    apiKey: 'AIzaSyANSRR6jOxrJIMnxiGhdVDB1s9QlB7Y2gI',
    appId: '1:741091330773:web:cbcb082916ac203a1c305c',
    messagingSenderId: '741091330773',
    projectId: 'gareji-shop-app',
    authDomain: 'gareji-shop-app.firebaseapp.com',
    storageBucket: 'gareji-shop-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF_fU089OqvgmgMjjoCmgxAq84jkpXp8o',
    appId: '1:741091330773:android:be8363b9f4623af11c305c',
    messagingSenderId: '741091330773',
    projectId: 'gareji-shop-app',
    storageBucket: 'gareji-shop-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDrYx1ikJG7q5mI3mbii2nFnJN3Uj_0srk',
    appId: '1:741091330773:ios:059b111cdee833531c305c',
    messagingSenderId: '741091330773',
    projectId: 'gareji-shop-app',
    storageBucket: 'gareji-shop-app.appspot.com',
    iosClientId: '741091330773-gr7eli7l03tbvbssp6i75lp0rv1lekl7.apps.googleusercontent.com',
    iosBundleId: 'com.example.garajiUserApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDrYx1ikJG7q5mI3mbii2nFnJN3Uj_0srk',
    appId: '1:741091330773:ios:059b111cdee833531c305c',
    messagingSenderId: '741091330773',
    projectId: 'gareji-shop-app',
    storageBucket: 'gareji-shop-app.appspot.com',
    iosClientId: '741091330773-gr7eli7l03tbvbssp6i75lp0rv1lekl7.apps.googleusercontent.com',
    iosBundleId: 'com.example.garajiUserApp',
  );
}
