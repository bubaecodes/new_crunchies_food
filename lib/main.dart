import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/features/authentication/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Crunchies Food App',
      home: OnboardingScreen(),
      // bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
    );
  }
}

