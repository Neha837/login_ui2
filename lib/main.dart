import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:login_ui/Pages/boading.dart';
import 'package:login_ui/Pages/signUp.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          home: SignupPage(),
          // home: BoardingPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
