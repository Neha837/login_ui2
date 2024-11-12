import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task09/catogery.dart';
import 'package:login_ui/Pages/Task06/Task06B.dart';
import 'package:login_ui/Pages/Task07/Task07B.dart';
import 'package:login_ui/Pages/Task04/Task04A.dart';
import 'package:login_ui/Pages/Task03/Task03B.dart';
import 'package:login_ui/Pages/Task03/Task03A.dart';
import 'package:login_ui/Pages/Task02/Task02A.dart';
import 'package:login_ui/Pages/Task02/Task02C.dart';
import 'package:login_ui/Pages/Task02/Task02B.dart';
import 'package:login_ui/Pages/Task01/Task01B.dart';
import 'package:login_ui/Pages/Task01/Task01A.dart';
import 'package:login_ui/Pages/Task04/Task04B.dart';
import 'package:login_ui/Pages/Task05/Task05B.dart';
import 'package:login_ui/Pages/Task05/Task05D.dart';
import 'package:login_ui/Pages/Task05/Task05C.dart';
import 'package:login_ui/Pages/Task05/Task05A.dart';
import 'package:login_ui/Pages/Task06/Task06A.dart';
import 'package:login_ui/Pages/Task07/Task07A.dart';
import 'package:login_ui/Pages/Task08/Task08A.dart';
import 'package:login_ui/Pages/Task08/Task08B.dart';
import 'package:login_ui/Pages/Task08/Task08C.dart';
import 'package:login_ui/Pages/Task09/food.dart';
import 'package:login_ui/Pages/Task09/infoscreen.dart';
import 'package:login_ui/Pages/Task09/moreinfoscreen.dart';
import 'package:login_ui/Pages/Task09/reviewscreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  (MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        // home: Task01A(),
        // home: Task01B(),
        // home: Task02A(),
        // home: Task02B(),
        // home: Task02C(),
        home: Task03A(),
        // home: Task03B(),
        // home: Task04A(),
        // home: Task04B(),
        // home: Task05A(),
        // home: Task05B(),
        // home: Task05C(),
        // home: Task05D(),
        // home: Task06A(),
        // home: Task06B(),
        // home: Task07A(),
        // home: Task07B(),
        // home: Task08A(),
        // home: Task08B(),
        // home: Task08C(),
        // home: infoscreen(),
        // home: moreinfoscreen(),
        // home: reviewscreen(),
        // home: catogery(),
        // home: foodscreen(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
