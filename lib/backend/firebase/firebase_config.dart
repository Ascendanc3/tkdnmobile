import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIKkaRNfBlSUDtPKv0JK1R1UkPfz51K3c",
            authDomain: "jube---jual-beli-beras-online.firebaseapp.com",
            projectId: "jube---jual-beli-beras-online",
            storageBucket: "jube---jual-beli-beras-online.appspot.com",
            messagingSenderId: "1037214185466",
            appId: "1:1037214185466:web:b9d1c1753bdfae66641643",
            measurementId: "G-5YXHKLFCWM"));
  } else {
    await Firebase.initializeApp();
  }
}
