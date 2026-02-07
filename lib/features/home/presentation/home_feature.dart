import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/core/constants/color_app.dart';
import 'package:grocery_app/core/constants/custom_text_poppins.dart';
import 'package:grocery_app/core/constants/helper.dart';
import 'package:grocery_app/features/auth/service/local_storage.dart';
import 'package:grocery_app/features/categorise/presentation/categorise_presentation.dart';
import 'package:grocery_app/features/categorise/presentation/model/category_list.dart';
import 'package:grocery_app/features/home/widgets/card_categories.dart';
import 'package:grocery_app/features/home/widgets/custome_slider_bannar.dart';
import 'package:grocery_app/features/home/widgets/home_header.dart';
import 'package:grocery_app/gen/assets.gen.dart';

class HomeFeature extends StatefulWidget {
  HomeFeature({super.key});

  @override
  State<HomeFeature> createState() => _HomeFeatureState();
}

class _HomeFeatureState extends State<HomeFeature> {
  late String getGreetingtext;
  String? userName;
  @override
  void initState() {
    getGreetingtext = getGreeting();
    super.initState();
  }

  Future<String?> name() async {
    userName = await LocalStorage().getName();
    setState(() {});
  }

  CategoriesList categoriesList = CategoriesList(color: ColorApp.purple);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(getGreetingtext: getGreetingtext, userName: userName),
            CustomSliderBanar(),
            Row(
              children: [
                CustomTextPoppins(
                  text: "Categories",
                  color: ColorApp.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategorisePresentation(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: ColorApp.black,
                    size: 30,
                  ),
                ),
              ],
            ),

            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CardCategories(
                    categoryModel: categoriesList.categories[index],
                    hasTitle: false,
                  );
                },
                itemCount: categoriesList.categories.length,
              ),
            ),
            Expanded(
              child: Text(
                "Offers",
                style: GoogleFonts.poppins(
                  color: ColorApp.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
