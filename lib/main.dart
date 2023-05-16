import 'package:flutter/material.dart';
import 'package:flutter_firebase_phone_auth/home.dart';
import 'package:flutter_firebase_phone_auth/phone.dart';
import 'package:flutter_firebase_phone_auth/verify.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
    runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home': (context) => HomeScreen()
    },
  ));
}

