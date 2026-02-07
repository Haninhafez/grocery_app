import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/features/cart/presentation/cart_presentation.dart';
import 'package:grocery_app/features/categorise/presentation/categorise_presentation.dart';
import 'package:grocery_app/features/faivorats/presentation/favorats_presentation.dart';
import 'package:grocery_app/features/home/presentation/home_feature.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<Widget> Screens = [
    HomeFeature(),
    CategorisePresentation(),
    CartPresentation(),
    FavoratsPresentation(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(44, 132, 132, 132),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          unselectedItemColor: ColorApp.grey,
          selectedItemColor: ColorApp.orange,

          selectedLabelStyle: TextStyle(fontSize: 0),
          unselectedLabelStyle: TextStyle(fontSize: 0),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30, fontWeight: FontWeight.w600),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_horiz_rounded,
                size: 30,
                fontWeight: FontWeight.w600,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/cart.svg"),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30, fontWeight: FontWeight.w600),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                size: 30,
                fontWeight: FontWeight.w600,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
