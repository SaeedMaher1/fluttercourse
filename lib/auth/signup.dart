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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 10,
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
              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              //width: double.infinity,
              //height: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "First name *",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                     hintText: "John",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Last name *",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                     hintText: "Doe",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "User name *",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                       hintText: "Enter your username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Email *",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                       hintText: "Enter your email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phone ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "    Enter your phone number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 188,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "college",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem(
                                          value: "1",
                                          child: Text("information technices")),
                                      DropdownMenuItem(
                                          value: "2", child: Text("Engineering")),
                                    ],
                                    onChanged: (_value) =>
                                        {print(_value.toString())},
                                    hint: Text("information technices"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Department",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem(
                                          value: "1", child: Text("Chimistry")),
                                      DropdownMenuItem(
                                          value: "2", child: Text("Mathmematisc")),
                                      DropdownMenuItem(
                                          value: "3", child: Text("Physics")),
                                      DropdownMenuItem(
                                          value: "4",
                                          child: Text("Medical analysis")),
                                      DropdownMenuItem(
                                          value: "5", child: Text("Life sincse")),
                                    ],
                                    onChanged: (_value) =>
                                        {print(_value.toString())},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 188,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Univarsity acadimy years",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem(
                                          value: "1", child: Text("1")),
                                      DropdownMenuItem(
                                          value: "2", child: Text("2")),
                                      DropdownMenuItem(
                                          value: "3", child: Text("3")),
                                      DropdownMenuItem(
                                          value: "4", child: Text("4")),
                                    ],
                                    onChanged: (_value) =>
                                        {print(_value.toString())},
                                    hint: Text("4"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem(
                                          value: "1", child: Text("meal")),
                                      DropdownMenuItem(
                                          value: "2", child: Text("femeal")),
                                    ],
                                    onChanged: (_value) =>
                                        {print(_value.toString())},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                                  "Password *",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                     hintText: "Enter your password",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10))),
                                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Container(
                      width: 350,
                        
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(10))),
                        ),
                      ),
                  
                      
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("privicy");
                    },
                    child: Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(text: "By continuing,you agree to our  "),
                        TextSpan(
                            text: " Terms of Service and  Privacy Policy",
                            style: TextStyle(
                             fontSize: 9,
                                fontWeight: FontWeight.bold, color: Colors.blue)),
                      ])),
                    ),
                  )
                  
                ],
              ),
            ),
          )),
    );
  }
}
