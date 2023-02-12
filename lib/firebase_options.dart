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
    apiKey: 'AIzaSyB7DSmRl8PDq6OE-sAoqBCuap3vGfmxt9E',
    appId: '1:635756468276:web:c706202d09282e24671261',
    messagingSenderId: '635756468276',
    projectId: 'test-2b736',
    authDomain: 'test-2b736.firebaseapp.com',
    storageBucket: 'test-2b736.appspot.com',
    measurementId: 'G-SBGBTW71TV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAlwz0QT3KMEeal1tl9Iwi4wVuvE32QnY',
    appId: '1:635756468276:android:2398e907a73c0a85671261',
    messagingSenderId: '635756468276',
    projectId: 'test-2b736',
    storageBucket: 'test-2b736.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxCyO3EPNzOVp26yAksSpV7JeyWjyLd44',
    appId: '1:635756468276:ios:9a8ac209fa60b329671261',
    messagingSenderId: '635756468276',
    projectId: 'test-2b736',
    storageBucket: 'test-2b736.appspot.com',
    iosClientId: '635756468276-2ltgjpfsbm1s3uufrl1s37g0in2usdvc.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagram2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxCyO3EPNzOVp26yAksSpV7JeyWjyLd44',
    appId: '1:635756468276:ios:9a8ac209fa60b329671261',
    messagingSenderId: '635756468276',
    projectId: 'test-2b736',
    storageBucket: 'test-2b736.appspot.com',
    iosClientId: '635756468276-2ltgjpfsbm1s3uufrl1s37g0in2usdvc.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagram2',
  );
}