import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderAuthentication extends StatelessWidget {
  const HeaderAuthentication({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),

        Icon(Icons.cancel, size: 30),
      ],
    );
  }
}
