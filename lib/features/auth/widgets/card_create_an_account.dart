import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/controller_button.dart';
import 'package:grocery_app/core/constants/helper.dart';
import 'package:grocery_app/core/utils/form_validators.dart';
import 'package:grocery_app/core/utils/snack_bar.dart';
import 'package:grocery_app/features/auth/model/user_model.dart';
import 'package:grocery_app/features/auth/service/auth_service.dart';
import 'package:grocery_app/features/auth/widgets/custom_text_field.dart';
import 'package:grocery_app/core/constants/custom_text_poppins.dart';
import 'package:grocery_app/features/auth/widgets/header_authentication.dart';
import 'package:grocery_app/features/auth/widgets/password_field.dart';
import 'package:grocery_app/features/auth/widgets/show_gratats.dart';

class CardCreateAnAccount extends StatefulWidget {
  CardCreateAnAccount({super.key, required this.outlineInputBorder});

  final OutlineInputBorder outlineInputBorder;

  @override
  State<CardCreateAnAccount> createState() => _CardCreateAnAccountState();
}

class _CardCreateAnAccountState extends State<CardCreateAnAccount> {
  UserModel userModel = UserModel();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: boxDecoration,

        child: SingleChildScrollView(
          child: Column(
            spacing: 25,
            children: [
              HeaderAuthentication(text: "Create your account"),

              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      outlineInputBorder: widget.outlineInputBorder,
                      text: "First Name",
                      validator: (String? value) {
                        userModel.firstName = value;
                        return Validators.name(userModel.firstName);
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      outlineInputBorder: widget.outlineInputBorder,
                      text: "Last Name",
                      validator: (String? value) {
                        userModel.lastName = value;
                        return Validators.name(userModel.lastName);
                      },
                    ),
                  ),
                ],
              ),
              CustomTextField(
                outlineInputBorder: widget.outlineInputBorder,
                text: "Email",
                validator: (String? value) {
                  userModel.email = value;
                  return Validators.email(userModel.email);
                },
              ),
              PasswordField(
                outlineInputBorder: widget.outlineInputBorder,
                validator: (String? value) {
                  userModel.password = value;
                  return Validators.password(userModel.password);
                },
              ),
              CustomTextinSign(
                text: "By tapping Sign up you accept all ",
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextinSign(text: "Terms", color: ColorApp.primay),
                  CustomTextinSign(text: " and ", color: Colors.black),
                  CustomTextinSign(text: "condtion", color: ColorApp.primay),
                ],
              ),
              ControllerButton(
                text: "CREATE AN ACCOUNT",
                color: ColorApp.primay,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      await createAccount(context, userModel);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(
                          context: context,
                          message: 'The password provided is too weak.',
                        );
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(
                          context: context,
                          message: 'The account already exists for that email.',
                        );
                      }
                    } catch (e) {
                      showSnackBar(context: context, message: e.toString());
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
