import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBn7DpYy8YojK_DNgGROvDMd_x0XNrcGMs",
            authDomain: "siagenda.firebaseapp.com",
            projectId: "siagenda",
            storageBucket: "siagenda.appspot.com",
            messagingSenderId: "967655033457",
            appId: "1:967655033457:web:879b507eb9e415736429d0",
            measurementId: "G-W7HED61FKN"));
  } else {
    await Firebase.initializeApp();
  }
}
