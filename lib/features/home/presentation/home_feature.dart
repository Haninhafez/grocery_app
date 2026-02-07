import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/helper.dart';

class HomeFeature extends StatefulWidget {
  HomeFeature({super.key});

  @override
  State<HomeFeature> createState() => _HomeFeatureState();
}

class _HomeFeatureState extends State<HomeFeature> {
  late String getGreetingtext;
  @override
  void initState() {
    getGreetingtext = getGreeting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [Row(children: [
            
          ],
        )]),
      ),
    );
  }
}
