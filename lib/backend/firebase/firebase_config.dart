import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBI8FKoe0DjEz6P-bzYk3HpkMxlQeGQOP8",
            authDomain: "tuition-app-eaq11w.firebaseapp.com",
            projectId: "tuition-app-eaq11w",
            storageBucket: "tuition-app-eaq11w.firebasestorage.app",
            messagingSenderId: "567576369866",
            appId: "1:567576369866:web:0609b5721ee54ec4c7f233"));
  } else {
    await Firebase.initializeApp();
  }
}
