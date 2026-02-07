import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextinSign extends StatelessWidget {
  CustomTextinSign({
    super.key,
    required this.text,
    required this.color,
    this.fontSize = 16,
  });
  final String text;
  final Color color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
