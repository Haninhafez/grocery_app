import 'dart:ui';

import 'package:flutter/widgets.dart';

class CategoryModel {
  final String title;
  final Widget imagePath;
  final Color color;

  const CategoryModel({
    required this.title,
    required this.imagePath,
    required this.color,
  });
}
