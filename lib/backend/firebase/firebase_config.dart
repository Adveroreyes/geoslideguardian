import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCtX6Es3BUDPt0ekC8_1DsNj_G6HkxXWlM",
            authDomain: "geoslide-psm.firebaseapp.com",
            projectId: "geoslide-psm",
            storageBucket: "geoslide-psm.appspot.com",
            messagingSenderId: "325607108232",
            appId: "1:325607108232:web:c3c71edf96ff5bef28f93d",
            measurementId: "G-DCFP2Q107V"));
  } else {
    await Firebase.initializeApp();
  }
}
