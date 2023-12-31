import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;

  final String? Function(String?)? validator;
  final Widget? icon;

  final bool? obscureText;

  const Textformfield({
    super.key,
    required this.hinttext,
    required this.mycontroller,
    required this.validator,
    this.icon,
    required String hintText,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        controller: mycontroller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIcon: icon,

          // label: Text(hinttext),
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          //filled: true,
          //fillColor: Colors.grey[200],

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 155, 154, 154),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 155, 154, 154),
              )),
        ));
  }
}
