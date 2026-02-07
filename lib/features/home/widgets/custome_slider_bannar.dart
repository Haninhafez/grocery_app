import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/features/home/widgets/container_banar.dart';
import 'package:grocery_app/gen/assets.gen.dart';

class CustomSliderBanar extends StatelessWidget {
  const CustomSliderBanar({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ContainerBanar(
          iamgePath: Assets.images.card1.path,
          text: "Recomended\n Recipe Today",
        ),
        ContainerBanar(
          iamgePath: Assets.images.card2.path,
          text: "Fresh Fruits\n Delivery",
        ),
      ],
      options: CarouselOptions(
        height: 210,
        autoPlay: true,
        autoPlayCurve: Curves.decelerate,
        autoPlayAnimationDuration: const Duration(milliseconds: 500),
        enableInfiniteScroll: true,
        viewportFraction: 0.9,
      ),
    );
  }
}
