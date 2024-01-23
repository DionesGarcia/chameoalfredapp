import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAYcARgPg9En-VWfForsxBzCYpMv265glw",
            authDomain: "restaurante-zw70ik.firebaseapp.com",
            projectId: "restaurante-zw70ik",
            storageBucket: "restaurante-zw70ik.appspot.com",
            messagingSenderId: "984193594535",
            appId: "1:984193594535:web:dd79129e13118dc8029782"));
  } else {
    await Firebase.initializeApp();
  }
}
