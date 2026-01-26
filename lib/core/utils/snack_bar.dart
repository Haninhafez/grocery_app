import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  ContentType contentType = ContentType.failure,
  Color? color,
  String title = "Failure",
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: AwesomeSnackbarContent(
        inMaterialBanner: false,
        title: title,
        message: message,
        messageTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        contentType: contentType,
        color: color ?? Color(0xffdd7801),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}
