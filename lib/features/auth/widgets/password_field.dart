import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  PasswordField({
    super.key,
    required this.outlineInputBorder,
    required this.validator,
  });

  final OutlineInputBorder outlineInputBorder;
  final String? Function(String?)? validator;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      outlineInputBorder: widget.outlineInputBorder,
      text: "Password",
      isPassword: isPassword,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isPassword = !isPassword;
          });
        },
        icon: isPassword
            ? Icon(Icons.visibility_off_outlined, color: Colors.grey, size: 20)
            : Icon(Icons.remove_red_eye_outlined, color: Colors.grey, size: 20),
      ),
      validator: widget.validator,
    );
  }
}
