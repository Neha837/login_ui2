import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/task02.dart';
import 'package:login_ui/Pages/Task02/signup2.dart';
import 'package:login_ui/Pages/Task02/login.dart';
import 'package:login_ui/Pages/Task01/signUp.dart';
import 'package:login_ui/Pages/Task01/task01.dart';
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
          // home: SignupPage(),
          // home: Task01(),
          // home: Task02(),
          home: loginPage(),
          // home: signup2Page(),

          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
