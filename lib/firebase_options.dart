import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: "AIzaSyBPETbNYEdrrWP96QshX-Ue_Ac4T7M-sOM",
    appId: "1:216117988895:web:a2d50bc3acda0656e94f2a",
    messagingSenderId: "853089705470",
    projectId: "transactions-app-835fc",
    authDomain: "transaction-3d58b.firebaseapp.com",
    storageBucket: "transaction-3d58b.appspot.com",
    measurementId: "G-DB4EES3WFM",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyB37mIk5LdMmkJ4hv5oDXitxau14ri0SRM",
    appId: "1:216117988895:android:628b411daf9909c1e94f2a",
    messagingSenderId: "216117988895",
    projectId: "transaction-3d58b",
    storageBucket: "transaction-3d58b.appspot.com",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyCdCC-W5CQGxe--PRuGsgugzhOg1kUFHyo",
    appId: "1:216117988895:ios:6f0c36e8c2236230e94f2a",
    messagingSenderId: "216117988895",
    projectId: "transaction-3d58b",
    storageBucket: "transaction-3d58b.appspot.com",
    //iosClientId:
    //'184595400107-5bvpcsqbapnsnb5u6fqrp86kr597hpvu.apps.googleusercontent.com',
    iosBundleId: "com.example.transactionsApp",
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: "AIzaSyB37mIk5LdMmkJ4hv5oDXitxau14ri0SRM",
    appId: "1:216117988895:ios:6f0c36e8c2236230e94f2a",
    messagingSenderId: "216117988895",
    projectId: "transaction-3d58b",
    storageBucket: "transaction-3d58b.appspot.com",
    //iosClientId:
    // '184595400107-5bvpcsqbapnsnb5u6fqrp86kr597hpvu.apps.googleusercontent.com',
    iosBundleId: "com.example.transactionsApp",
  );
}
