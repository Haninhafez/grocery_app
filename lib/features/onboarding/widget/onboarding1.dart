import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/features/onboarding/widget/custom_text.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          SvgPicture.asset("assets/images/onboarding1.svg", fit: BoxFit.fill),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          CustomText(text: "Welcome to Fresh Fruits"),
          SizedBox(height: 10),
          CustomText(
            text: "Grocery application",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          CustomText(
            text:
                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor ",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
