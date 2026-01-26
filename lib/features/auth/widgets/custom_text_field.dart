import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/utils/form_validators.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.outlineInputBorder,
    required this.text,
    this.isPassword = false,
    this.suffixIcon,
    required this.validator,
  });

  final OutlineInputBorder outlineInputBorder;
  final String text;
  bool isPassword;
  Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,

      style: GoogleFonts.dmSans(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      validator: validator,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }
}
