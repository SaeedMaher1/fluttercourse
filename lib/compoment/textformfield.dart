// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;

  final String? Function(String?)? validator;

  const Textformfield(
      {super.key,
      required this.hinttext,
      required this.mycontroller,
      required this.validator,
      required Icon suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          filled: true,
          fillColor: Colors.grey[200],
          icon: Icon(Icons.visibility_off),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 155, 154, 154),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 155, 154, 154),
              )),
        ));
  }
}
