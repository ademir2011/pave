import 'package:flutter/material.dart';

class CTextFormField extends StatelessWidget {
  final String hintText;
  final void Function(String) validator;
  final bool isPasswordField;
  final TextEditingController controller;

  CTextFormField({
    @required this.hintText,
    @required this.validator,
    this.controller,
    this.isPasswordField = false,
  });

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.80),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.90),
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(30),
              topLeft: const Radius.circular(30),
            ),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          contentPadding: EdgeInsets.only(left: 25, top: 30),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          errorStyle: TextStyle(
            color: Color(0xFFBF4949),
            fontSize: 15.0,
          ),
          hintText: this.hintText,
          hintStyle: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
            color: Color(0xFFBF4949),
            fontSize: 17.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFBF4949), width: 1.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusColor: Colors.white,
        ),
        style: TextStyle(
          color: Color(0xFFBF4949),
        ),
        validator: this.validator,
        obscureText: this.isPasswordField,
      ),
    );
  }
}
