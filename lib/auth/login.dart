// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, use_build_context_synchronously, avoid_print, body_might_complete_normally_nullable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttercourse/compoment/coustombutton.dart';
import 'package:fluttercourse/compoment/textformfield.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 50),
                      Container(height: 20),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 20,
                      ),
                      Text(
                        "Login to continue using the app",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        height: 20,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 10,
                      ),
                      Textformfield(
                        hinttext: "Enter your Email",
                        mycontroller: email,
                        suffixIcon: Icon(Icons.abc),
                        validator: (val) {
                          if (val == " ") {
                            return "Can't to be Empty";
                          }
                        },
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 10,
                      ),
                      Textformfield(
                          hinttext: "Enter your Password",
                          mycontroller: password,
                          suffixIcon: Icon(Icons.visibility_off),
                          validator: (val) {
                            if (val == " ") {
                              return "Can't to be Empty";
                            }
                          }),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Text(
                          "Forget Password ?",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ]),
              ),
              CoustomButtonAuth(
                title: "Login",
                onPressed: () async {
                  if (formState.currentState!.validate()) {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email.text, password: password.text);
                      Navigator.of(context).pushReplacementNamed("homepage");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Error',
                          desc: 'No user found for that email.',
                        ).show();
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Error',
                          desc: 'Wrong password provided for that user.',
                        ).show();
                      }
                    }
                  } else {
                    print("Not Valid");
                  }
                },
              ),
              Container(
                height: 20,
              ),
              MaterialButton(
                  height: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.red[700],
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login with Google"),
                      Image.asset(
                        "imges/download.png",
                        width: 20,
                      )
                    ],
                  )),
              Container(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("register");
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Dont have a Acount?"),
                    TextSpan(
                        text: "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                  ])),
                ),
              )
            ],
          )),
    );
  }
}
