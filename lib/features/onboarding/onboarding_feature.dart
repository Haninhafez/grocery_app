import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/controller_button.dart';
import 'package:grocery_app/features/auth/presentation/login_presentation.dart';
import 'package:grocery_app/features/auth/presentation/signup_presentation.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding1.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding2.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingFeature extends StatefulWidget {
  OnboardingFeature({super.key});

  @override
  State<OnboardingFeature> createState() => _OnboardingFeatureState();
}

class _OnboardingFeatureState extends State<OnboardingFeature> {
  late PageController controller;
  int currentIndex = 0;
  late List<Widget> pages = [
    Onboarding1(),
    Onboarding2(controller: controller),
    Onboarding3(),
  ];
  void onTap() {
    controller.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    controller = PageController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  children: pages,
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 30,
                  dotColor: Color(0xffF2F2F2),
                  activeDotColor: Color(0xff12B76A),
                ),
              ),
              SizedBox(height: 20),
              currentIndex == pages.length - 1
                  ? Column(
                      children: [
                        ControllerButton(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPresentation(),
                            ),
                          ),

                          text: "CREATE AN ACCOUNT",
                          color: Colors.black,
                          textColor: Colors.white,
                        ),
                        ControllerButton(
                          onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPresentation(),
                            ),
                          ),

                          text: "LOGIN",
                          color: Colors.white,
                          borderColor: Colors.black,
                        ),
                      ],
                    )
                  : ControllerButton(
                      onTap: onTap,

                      text: "Next",
                      color: ColorApp.primay,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
