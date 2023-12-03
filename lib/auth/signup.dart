// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, use_build_context_synchronously, avoid_print, body_might_complete_normally_nullable

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttercourse/compoment/coustombutton.dart';
import 'package:fluttercourse/compoment/textformfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController username = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(height: 50),
                Container(height: 20),
                Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Register to continue using the app",
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "First Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                    ),
                    Textformfield(
                        hinttext: "Enter your First Name",
                        mycontroller: username,
                        suffixIcon: Icon(Icons.abc),
                        validator: (val) {
                          if (val == " ") {
                            return "Can't to be Empty";
                          }
                        }),
                    Container(
                      height: 20,
                    ),
                    Text(
                      "Last Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                    ),
                    Textformfield(
                        hinttext: "Enter your Last Name",
                        mycontroller: lastname,
                        suffixIcon: Icon(Icons.visibility_off),
                        validator: (val) {
                          if (val == " ") {
                            return "Can't to be Empty";
                          }
                        }),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                ),
                Textformfield(
                  hinttext: "Enter your Email",
                  mycontroller: email,
                  validator: (val) {
                    if (val == " ") {
                      return "Can't to be Empty";
                    }
                  },
                  suffixIcon: Icon(Icons.abc),
                ),
                Container(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
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
              CoustomButtonAuth(
                title: "Register",
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    Navigator.of(context).pushReplacementNamed("homepage");
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'Error',
                        desc: 'Wrong password provided for that user.',
                      ).show();
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'Error',
                        desc: 'Wrong password provided for that user.',
                      ).show();
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("login");
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "have a Acount?"),
                    TextSpan(
                        text: "Login",
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
