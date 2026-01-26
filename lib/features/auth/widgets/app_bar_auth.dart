import 'package:flutter/material.dart';

class AppBarForAuth extends StatelessWidget {
  const AppBarForAuth({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
            size: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
