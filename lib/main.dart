// ignore_for_file: prefer_const_constructors, avoid_print, annotate_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttercourse/auth/homepage.dart';
import 'package:fluttercourse/auth/login.dart';
import 'package:fluttercourse/auth/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('=============User is currently signed out!');
        Navigator.of(context).pushReplacementNamed("login");
      } else {
        print('=============User is signed in!');
        Navigator.of(context).pushReplacementNamed("homepage");
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "register": (context) => Register(),
        "login": (context) => Login(),
        "homepage": (context) => Homepage(),
      },
    );
  }
}
