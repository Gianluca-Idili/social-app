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
    apiKey: 'AIzaSyBCqHOmkEr419fX0qbJf0bOMSgTwYHmDYs',
    appId: '1:409972174114:web:4dce54fdc7d68dfe2f897b',
    messagingSenderId: '409972174114',
    projectId: 'braffa-52233',
    authDomain: 'braffa-52233.firebaseapp.com',
    storageBucket: 'braffa-52233.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBO1eojr1ObrjwY28qWgm0pMHNIYUwRc4',
    appId: '1:409972174114:android:b063598ecc81a5d72f897b',
    messagingSenderId: '409972174114',
    projectId: 'braffa-52233',
    storageBucket: 'braffa-52233.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGE5qM0GktoESF1-NJYWpsQ7Uz_2mgLko',
    appId: '1:409972174114:ios:ebda95657d085d4a2f897b',
    messagingSenderId: '409972174114',
    projectId: 'braffa-52233',
    storageBucket: 'braffa-52233.appspot.com',
    iosClientId: '409972174114-nrube2sn2m58g6dns67bi106q3efdj6h.apps.googleusercontent.com',
    iosBundleId: 'com.example.firtstFlutterProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGE5qM0GktoESF1-NJYWpsQ7Uz_2mgLko',
    appId: '1:409972174114:ios:ceec8d21b48162072f897b',
    messagingSenderId: '409972174114',
    projectId: 'braffa-52233',
    storageBucket: 'braffa-52233.appspot.com',
    iosClientId: '409972174114-p9f7alkmlv9ppvcckucnopts7jeh7u2r.apps.googleusercontent.com',
    iosBundleId: 'com.example.firtstFlutterProject.RunnerTests',
  );
}
