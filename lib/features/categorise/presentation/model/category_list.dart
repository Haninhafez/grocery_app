import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/gen/assets.gen.dart';
import 'category_model.dart';

class CategoriesList {
  final Color color;

  CategoriesList({required this.color});

  List<CategoryModel> get categories => [
    CategoryModel(
      title: 'Diary',
      imagePath: Assets.images.diary.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Eggs',
      imagePath: Assets.images.eggs.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Mushroom',
      imagePath: Assets.images.mashroumSvg.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Fruits',
      imagePath: Assets.images.fruitsSvg.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Breads',
      imagePath: Assets.images.breads.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Oat',
      imagePath: Assets.images.oat.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Rice',
      imagePath: Assets.images.rice.svg(color: color),
      color: color,
    ),
    CategoryModel(
      title: 'Vegetables',
      imagePath: Assets.images.vagetablessvg.svg(color: color),
      color: color,
    ),
  ];
}
