import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/helper.dart';
import 'package:grocery_app/features/auth/widgets/app_bar_auth.dart';
import 'package:grocery_app/features/auth/widgets/card_create_an_account.dart';
import 'package:grocery_app/features/onboarding/onboarding_feature.dart';

import 'package:grocery_app/features/onboarding/widget/onboarding3.dart';

class SignupPresentation extends StatelessWidget {
  const SignupPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/login_background.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),

            Positioned(
              top: 50,
              child: AppBarForAuth(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding3()),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff000000).withOpacity(0.3),
                    Color(0xff000000).withOpacity(0.01),
                  ],
                ),
              ),
            ),

            Positioned.fill(
              top: 350,
              left: 0,
              right: 0,
              bottom: 0,

              child: CardCreateAnAccount(
                outlineInputBorder: outlineInputBorder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
