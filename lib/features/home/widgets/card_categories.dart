import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/custom_text_poppins.dart';
import 'package:grocery_app/features/categorise/presentation/model/category_model.dart';

class CardCategories extends StatelessWidget {
  CardCategories({
    super.key,
    required this.categoryModel,
    this.hasTitle = false,
    this.hasShadow = true,
  });
  final CategoryModel categoryModel;
  bool hasTitle;
  bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

        boxShadow: [
          hasShadow
              ? BoxShadow(
                  color: const Color.fromARGB(129, 158, 158, 158),
                  spreadRadius: .5,
                  blurRadius: 20,
                  offset: const Offset(20, 1),
                )
              : BoxShadow(),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          categoryModel.imagePath,
          hasTitle
              ? CustomTextPoppins(
                  text: categoryModel.title,
                  color: categoryModel.color,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )
              : SizedBox(height: 0),
        ],
      ),
    );
  }
}
