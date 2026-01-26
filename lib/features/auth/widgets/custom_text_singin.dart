import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextinSign extends StatelessWidget {
  const CustomTextinSign({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
