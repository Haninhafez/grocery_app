import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding1.dart';
import 'package:grocery_app/features/onboarding/onboarding_feature.dart';

class SplashFreatures extends StatefulWidget {
  const SplashFreatures({super.key});

  @override
  State<SplashFreatures> createState() => _SplashFreaturesState();
}

class _SplashFreaturesState extends State<SplashFreatures> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingFeature()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primay,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset("assets/images/logo.png"),
          SizedBox(height: 40, width: double.infinity),
        ],
      ),
    );
  }
}
