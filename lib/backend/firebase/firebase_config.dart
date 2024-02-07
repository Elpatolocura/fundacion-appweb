import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAJ_l20YDG4sHOqkeftL07sWJh0J_UkQjw",
            authDomain: "fundacion-f7ab0.firebaseapp.com",
            projectId: "fundacion-f7ab0",
            storageBucket: "fundacion-f7ab0.appspot.com",
            messagingSenderId: "14680947691",
            appId: "1:14680947691:web:d98c541e7e69163b59b7ae"));
  } else {
    await Firebase.initializeApp();
  }
}
