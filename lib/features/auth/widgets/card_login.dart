import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/controller_button.dart';
import 'package:grocery_app/core/constants/helper.dart';
import 'package:grocery_app/core/utils/form_validators.dart';
import 'package:grocery_app/core/utils/snack_bar.dart';
import 'package:grocery_app/features/auth/model/user_model.dart';
import 'package:grocery_app/features/auth/service/auth_service.dart';
import 'package:grocery_app/features/auth/widgets/custom_text_field.dart';
import 'package:grocery_app/features/auth/widgets/custom_text_singin.dart';
import 'package:grocery_app/features/auth/widgets/header_authentication.dart';
import 'package:grocery_app/features/auth/widgets/password_field.dart';
import 'package:grocery_app/features/home/presentation/home_feature.dart';

class CardLogin extends StatefulWidget {
  CardLogin({super.key});

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  UserModel userModel = UserModel();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            HeaderAuthentication(text: "Sign In"),
            CustomTextField(
              outlineInputBorder: outlineInputBorder,
              text: "Email",
              validator: (String? value) {
                userModel.email = value;
                return Validators.email(value);
              },
            ),

            PasswordField(
              outlineInputBorder: outlineInputBorder,
              validator: (String? value) {
                userModel.password = value;
                return Validators.password(value);
              },
            ),
            CustomTextinSign(text: "Forget Password?", color: ColorApp.orange),
            SizedBox(height: 25),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: ControllerButton(
                text: "SIGN IN",
                color: ColorApp.primay,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      await signIn(userModel);
                      showSnackBar(
                        title: "Success",
                        context: context,
                        message: "Login Success",
                        contentType: ContentType.success,
                        color: Colors.green.shade400,
                      );
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeFeature()),
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'invalid-credential') {
                        showSnackBar(
                          context: context,
                          message: 'Email or password is incorrect',
                        );
                      } else if (e.code == 'user-not-found') {
                        showSnackBar(
                          context: context,
                          message: 'User not found',
                        );
                      } else if (e.code == 'user-disabled') {
                        showSnackBar(
                          context: context,
                          message: 'This account has been disabled',
                        );
                      } else {
                        showSnackBar(
                          context: context,
                          message: e.message ?? 'Authentication error',
                        );
                      }
                    } catch (e) {
                      print(e.toString());
                      showSnackBar(context: context, message: e.toString());
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
