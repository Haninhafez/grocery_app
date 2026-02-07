import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/features/onboarding/widget/custom_text_inter.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarForOnBoarding(controller: controller),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Image.asset("assets/images/on.png", fit: BoxFit.cover),
          SizedBox(height: 20),
          CustomText(text: "We provide best quality\n Fruits to your family"),
          SizedBox(height: 15),
          CustomText(
            text:
                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed ",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
