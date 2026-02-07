import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/color_app.dart';

var boxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);

var outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(color: ColorApp.orange),
);

String getGreeting() {
  final hour = DateTime.now().hour;

  if (hour >= 5 && hour < 12) {
    return "Good Morning ";
  } else if (hour >= 12 && hour < 17) {
    return "Good Afternoon ";
  } else if (hour >= 17 && hour < 21) {
    return "Good Evening ";
  } else {
    return "Good Night ";
  }
}
