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
