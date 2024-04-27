import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCM2xUXvDs1FNxPBNlZXzIhhfp5FrGOPWw",
            authDomain: "fanale-appuntamenti-r4glso.firebaseapp.com",
            projectId: "fanale-appuntamenti-r4glso",
            storageBucket: "fanale-appuntamenti-r4glso.appspot.com",
            messagingSenderId: "80545611289",
            appId: "1:80545611289:web:5466ee26da5cc1007af488"));
  } else {
    await Firebase.initializeApp();
  }
}
