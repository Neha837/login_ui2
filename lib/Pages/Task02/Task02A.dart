import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/Task02B.dart';
import 'package:login_ui/Pages/Task02/widget02.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task02A extends StatefulWidget {
  Task02A({super.key});

  @override
  State<Task02A> createState() => _PageState();
}

class _PageState extends State<Task02A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: Column(children: [
                  Image.asset("assets/logos/nightly_logo.png", height: 6.5.h),
                  SizedBox(height: 72.sp),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    customtextwithmonteserrat("Are you a user",
                        color: Color(0xffE4B922),
                        fontsize: 20.sp,
                        fontWeight: FontWeight.w600)
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    customtextwithmonteserrat("or establishment?",
                        color: Color(0xffE4B922),
                        fontsize: 20.sp,
                        fontWeight: FontWeight.w600)
                  ]),
                  SizedBox(height: 25.sp),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    InkWell(
                        onTap: () {
                          Get.to(Task02B());
                        },
                        child: customcontainer("user.png", "User")),
                    SizedBox(width: 15.sp),
                    InkWell(
                        onTap: () {
                          Get.to(Task02B());
                        },
                        child: customcontainer("food.png", "Establishment"))
                  ]),
                  SizedBox(height: 3.6.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    customtextwithmonteserrat("Already have an account?",
                        fontsize: 13.5.sp),
                    SizedBox(width: .5.w),
                    InkWell(
                        onTap: () {
                          Get.to(Task02B());
                        },
                        child: customtextwithmonteserrat("Log In",
                            fontWeight: FontWeight.w700,
                            fontsize: 13.5.sp,
                            textDecoration: TextDecoration.underline))
                  ])
                ]))));
  }
}
