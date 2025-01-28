import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task01/Task01B.dart';
import 'package:login_ui/Pages/Task01/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task01A extends StatefulWidget {
  Task01A({super.key});

  @override
  State<Task01A> createState() => _PageState();
}

class _PageState extends State<Task01A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff383B42),
        body: Column(children: [
          Container(
              height: 55.h,
              child: Padding(
                  padding: EdgeInsets.only(
                      right: 5.w, left: 5.w, top: 5.h, bottom: 5.h),
                  child: Image.asset("assets/icons/boarding.png"))),
          Container(
              height: 45.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Color(0xff1F2126),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(children: [
                Padding(padding: EdgeInsets.all(25)),
                customsignupbutton("Sign Up with Email", () {
                  Get.to(Task01B());
                }),
                SizedBox(height: 4.h),
                customtextwidget("Or Sign Up with", color: Colors.white70),
                SizedBox(height: 3.h),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customsocialmediabutton("assets/icons/apple.png", () {}),
                      customsocialmediabutton(
                          "assets/icons/twitter.png", () {}),
                      customsocialmediabutton("assets/icons/google.png", () {})
                    ]),
                SizedBox(height: 7.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  customtextwidget("Already have an account?",
                      color: Colors.white70, fontWeight: FontWeight.w500),
                  SizedBox(width: 1.w),
                  customtextwidget("Sign in now",
                      color: Color(0xff5385E5),
                      fontWeight: FontWeight.w500,
                      textdecoration: TextDecoration.underline)
                ])
              ]))
        ]));
  }
}
