// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, use_build_context_synchronously, avoid_print, body_might_complete_normally_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttercourse/auth/signup.dart';
import 'package:fluttercourse/compoment/coustombutton.dart';
import 'package:fluttercourse/compoment/textformfield.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:form_validation/form_validation.dart';

UserModel? userData;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: isLoading
            ? CircularProgressIndicator()
            : Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Form(
                      key: formState,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Textformfield(
                              hinttext: "Enter your username or email",
                              mycontroller: email,

                              validator: (val) {
                                final validatator = Validator(validators: [
                                  const EmailValidator(),
                                  const RequiredValidator(),
                                ]);
                                return validatator.validate(
                                    label: 'Email', value: val);
                              },
                              hintText: '', //suffixIcon: Icon(Icons.abc),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Textformfield(
                              obscureText: true,
                              hinttext: "Enter your Password",
                              mycontroller: password,
                              icon: Icon(
                                Icons.visibility_off,
                                size: 20,
                              ),
                              validator: (val) {
                                final validatator = Validator(validators: [
                                  const RequiredValidator(),
                                ]);
                                return validatator.validate(
                                    label: 'Password', value: val);
                              },
                              hintText: '',
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(top: 5, bottom: 6),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed("pass");
                                    },
                                    child: Text(
                                      "Forget password?",
                                      style: TextStyle(color: Colors.blue),
                                    ))),
                          ]),
                    ),
                    CoustomButtonAuth(
                      title: "Login",
                      onPressed: () async {
                        if (formState.currentState!.validate()) {
                          try {
                            setState(() {
                              isLoading = true;
                            });
                            final credential = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email.text, password: password.text);
                            await FirebaseFirestore.instance
                                .collection('users')
                                .doc(credential.user!.uid)
                                .get()
                                .then((value) {
                              userData = UserModel.fromJson(value.data());
                              setState(() {
                                isLoading = false;
                              });
                            });

                            Navigator.of(context).pushNamed("homepage");
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
                    SizedBox(
                      height: 200,
                    ),
                    Center(child: Text("or login with")),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.grey,
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
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("register");
                      },
                      child: Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "Dont have a Acount?"),
                          TextSpan(
                              text: " Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ])),
                      ),
                    )
                  ],
                )),
      ),
    );
  }
}
