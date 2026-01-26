import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/features/onboarding/widget/custom_text.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.14),
            SvgPicture.asset(
              "assets/images/onboarding3.svg",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 80),
            CustomText(text: "Fast and responsibily\n delivery by our courir "),
            SizedBox(height: 20),
            CustomText(
              text:
                  "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor ",
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            SizedBox(width: double.infinity),
          ],
        ),
      ),
    );
  }
}

class AppBarForOnBoarding extends StatelessWidget {
  const AppBarForOnBoarding({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => controller.previousPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          ),
          icon: Icon(Icons.arrow_back, color: ColorApp.orange, size: 30),
        ),
      ],
    );
  }
}
