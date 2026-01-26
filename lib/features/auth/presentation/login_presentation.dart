import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/helper.dart';
import 'package:grocery_app/features/auth/presentation/signup_presentation.dart';
import 'package:grocery_app/features/auth/widgets/app_bar_auth.dart';
import 'package:grocery_app/features/auth/widgets/card_login.dart';

class LoginPresentation extends StatelessWidget {
  const LoginPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox(height: double.infinity),
          Image.asset(
            "assets/images/singin_background.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 35,

            child: AppBarForAuth(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPresentation()),
                );
              },
            ),
          ),
          Positioned.fill(
            top: 450,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: boxDecoration,

              child: CardLogin(),
            ),
          ),
        ],
      ),
    );
  }
}
