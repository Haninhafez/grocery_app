import 'package:flutter/material.dart';
import 'package:grocery_app/core/constants/navigationbar_presention.dart';
import 'package:grocery_app/features/auth/presentation/login_presentation.dart';
import 'package:grocery_app/features/auth/presentation/signup_presentation.dart';
import 'package:grocery_app/features/home/presentation/home_feature.dart';
import 'package:grocery_app/features/onboarding/onboarding_feature.dart';
import 'package:grocery_app/features/onboarding/widget/onboarding1.dart';
import 'package:grocery_app/features/splash_fratures/splash_freatures.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeFeature());
  }
}
