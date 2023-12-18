import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttercourse/compoment/coustombutton.dart';
import 'package:fluttercourse/compoment/textformfield.dart';
import 'package:form_validation/form_validation.dart';

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
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Register",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formState,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(children: [
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "Register to continue using the app",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 18,
                ),
                Textformfield(
                  hinttext: "Enter your First Name",
                  mycontroller: username,
                  validator: (val) {
                    final validatator = Validator(validators: [
                      const RequiredValidator(),
                    ]);
                    return validatator.validate(label: 'First Name', value: val);
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Textformfield(
                  hinttext: "Enter your Last Name",
                  mycontroller: lastname,
                  validator: (val) {
                    final validatator = Validator(validators: [
                      const RequiredValidator(),
                    ]);
                    return validatator.validate(label: 'Last Name', value: val);
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Textformfield(
                  hinttext: "Enter your Email",
                  mycontroller: email,
                  validator: (val) {
                    final validatator = Validator(validators: [
                      const EmailValidator(),
                      const RequiredValidator(),
                    ]);
                    return validatator.validate(label: 'Email', value: val);
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Textformfield(
                  hinttext: "Enter your Password",
                  mycontroller: password,
                  validator: (val) {
                    final validatator = Validator(validators: [
                      const RequiredValidator(),
                    ]);
                    return validatator.validate(label: 'Password', value: val);
                  },
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  child: const Text(
                    "Forget Password ?",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                CoustomButtonAuth(
                  title: "Register",
                  onPressed: () async {
                    if (formState.currentState!.validate()) {
                      try {
                        Navigator.of(context).pushReplacementNamed("homepage");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          debugPrint('The password provided is too weak.');
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'Wrong password provided for that user.',
                          ).show();
                        } else if (e.code == 'email-already-in-use') {
                          debugPrint('The account already exists for that email.');
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
                    }
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("login");
                  },
                  child: const Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: "have a Acount?"),
                      TextSpan(
                          text: " Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ])),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
