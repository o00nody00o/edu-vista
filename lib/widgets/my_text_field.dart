// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TextFieldsWidget extends StatelessWidget {
  String labelText;
  var keyboardType;
  TextFieldsWidget({
    super.key,
    required this.keyboardType,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: [AutofillHints.email],
      obscureText: false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: 'Readex Pro',
          letterSpacing: 0,
          
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 235, 233, 233),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:const Color.fromARGB(255, 235, 233, 233),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(24),
      ),
      style: TextStyle(
        fontFamily: 'Readex Pro',
        letterSpacing: 0,
      ),
      keyboardType: keyboardType,
    );
  }
}