import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttercourse/auth/accountset.dart';
import 'package:fluttercourse/auth/editprof.dart';
import 'package:fluttercourse/auth/help.dart';
import 'package:fluttercourse/auth/homepage.dart';
import 'package:fluttercourse/auth/language.dart';
import 'package:fluttercourse/auth/login.dart';
import 'package:fluttercourse/auth/newpass.dart';
import 'package:fluttercourse/auth/pass.dart';
import 'package:fluttercourse/auth/privicy.dart';
import 'package:fluttercourse/auth/setting.dart';
import 'package:fluttercourse/auth/settinggg.dart';
import 'package:fluttercourse/auth/signup.dart';
import 'package:fluttercourse/auth/verify.dart';
import 'package:fluttercourse/auth/welcome.dart';

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
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        debugPrint('=============User is currently signed out!');
        Navigator.of(context).pushReplacementNamed("login");
      } else {
        debugPrint('=============User is signed in!');
        Navigator.of(context).pushReplacementNamed("homepage");
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
      routes: {
        "welcome": (context) => const Welcome(),
        "register": (context) => const Register(),
        "login": (context) => const Login(),
        "homepage": (context) => const Homepage(),
        "setting": (context) => const Setting(),
        "pass": (context) => const pass(),
        "verify": (context) => const Verify(),
        "newpass": (context) => const Newpass(),
        "editprof": (context) => const Editprof(),
        "language": (context) => const Lunguage(),
        "settinggg": (context) => const Settinggg(),
        "accountset": (context) => const Accountset(),
        "help": (context) => const Help(),
        "privicy": (context) => const Privacy(),
      },
    );
  }
}
