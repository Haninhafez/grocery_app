import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/custom_text_poppins.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.getGreetingtext,
    required this.userName,
  });

  final String getGreetingtext;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextPoppins(
          text: getGreetingtext,
          color: ColorApp.darkGrey,
          fontWeight: FontWeight.w400,
        ),
        Row(
          children: [
            CustomTextPoppins(
              text: userName ?? 'No Name',
              color: ColorApp.black,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.notifications, color: ColorApp.darkIcon),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
