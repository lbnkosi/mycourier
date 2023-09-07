import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJ8VsyUJp3J7WF9KJK63uEwGF48bXQxMw",
            authDomain: "mycourier-f60f6.firebaseapp.com",
            projectId: "mycourier-f60f6",
            storageBucket: "mycourier-f60f6.appspot.com",
            messagingSenderId: "988595021480",
            appId: "1:988595021480:web:a6aee265f8d5e1b411449d",
            measurementId: "G-E60GY34LQX"));
  } else {
    await Firebase.initializeApp();
  }
}
