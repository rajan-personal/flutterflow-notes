import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIFZ9JadB6QuFCNJX1OQ6N0QI-lUAnVsA",
            authDomain: "flutterflow-notes.firebaseapp.com",
            projectId: "flutterflow-notes",
            storageBucket: "flutterflow-notes.appspot.com",
            messagingSenderId: "981154265593",
            appId: "1:981154265593:web:396d677846663ac9ae2528",
            measurementId: "G-HVMKWHT7RT"));
  } else {
    await Firebase.initializeApp();
  }
}
