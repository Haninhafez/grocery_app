import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/custom_text_poppins.dart';

class ContainerBanar extends StatelessWidget {
  const ContainerBanar({
    super.key,
    required this.iamgePath,
    required this.text,
  });
  final String iamgePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(iamgePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 200,
          width: MediaQuery.of(context).size.width * 0.85,
          padding: EdgeInsets.all(15),
          alignment: Alignment.bottomLeft,
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            gradient: LinearGradient(
              begin: AlignmentGeometry.bottomLeft,
              end: AlignmentGeometry.centerRight,
              colors: [
                Color.fromARGB(112, 56, 65, 68),
                Color.fromARGB(31, 91, 91, 91),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextPoppins(text: text, color: Colors.white, fontSize: 18),
            ],
          ),
        ),
      ],
    );
  }
}
