import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // static const FirebaseOptions web = FirebaseOptions(
  //   apiKey: 'AIzaSyC_ubN3n0_aJZAugjyEeVWPy-CwD1H5nK4',
  //   appId: '1:599030350718:web:ca91f6b1d6769be8b6292f',
  //   messagingSenderId: '599030350718',
  //   projectId: 'fir-auth-demo-ec48c',
  //   authDomain: 'fir-auth-demo-ec48c.firebaseapp.com',
  //   storageBucket: 'fir-auth-demo-ec48c.appspot.com',
  // );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1CD3E2g-zmUoWqK1Le_RNEpPbpb5TrDc',
    appId: '1:599030350718:android:bff62dc1dc7685abb6292f',
    messagingSenderId: '599030350718',
    projectId: 'fir-auth-demo-ec48c',
    storageBucket: 'fir-auth-demo-ec48c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9wBMEJ1WDl8WkUoxHqIVqPLvwClaTYxs',
    appId: '1:599030350718:ios:d4aadf3cf97a599eb6292f',
    messagingSenderId: '599030350718',
    projectId: 'fir-auth-demo-ec48c',
    storageBucket: 'fir-auth-demo-ec48c.appspot.com',
    iosClientId: '599030350718-rt5diuiggpna5fmco6k05teqm2km0f66.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthDemo',
  );

  // static const FirebaseOptions macos = FirebaseOptions(
  //   apiKey: 'AIzaSyC9wBMEJ1WDl8WkUoxHqIVqPLvwClaTYxs',
  //   appId: '1:599030350718:ios:d4aadf3cf97a599eb6292f',
  //   messagingSenderId: '599030350718',
  //   projectId: 'fir-auth-demo-ec48c',
  //   storageBucket: 'fir-auth-demo-ec48c.appspot.com',
  //   iosClientId: '599030350718-rt5diuiggpna5fmco6k05teqm2km0f66.apps.googleusercontent.com',
  //   iosBundleId: 'com.example.firebaseAuthDemo',
  // );
}