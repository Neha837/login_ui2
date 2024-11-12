import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task08/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task08C extends StatefulWidget {
  const Task08C({super.key});

  @override
  State<Task08C> createState() => _Task08CState();
}

class _Task08CState extends State<Task08C> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Row(children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back_ios, size: 3.h)),
                        Spacer(),
                        Image.asset("assets/logos/hospo.png", height: 3.8.h),
                        Spacer(),
                        textwithopensans("Munich",
                            fontWeight: FontWeight.w700, fontsize: 14.5.sp),
                        SizedBox(width: .5.h),
                        Icon(Icons.location_on_outlined, size: 2.h)
                      ])),
                  SizedBox(height: 1.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Image.asset(
                                      "assets/icons/search_icon.png",
                                      height: 1.h)),
                              hintText: "Search",
                              hintStyle: GoogleFonts.barlow(
                                  color: Color(0xffD0D0D0), fontSize: 16.sp),
                              suffixIcon: Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Image.asset(
                                      "assets/icons/sufixicon.png",
                                      height: 1.h)),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0)))))),
                  SizedBox(height: 3.5.h),
                  hosposcreenwidget("restuarent.png", "Monich Resturant",
                      "Thu-Fri", "50% off food and drinks", "500m", "4 Max"),
                  SizedBox(height: 2.h),
                  hosposcreenwidget("whitecastle.png", "White Castle",
                      "Thu-Fri", "50% on total bill", "200m", "4 Max")
                ]))),
        bottomNavigationBar: Container(
            height: 8.h,
            decoration: BoxDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/home.png", height: 3.5.h),
                  Image.asset("assets/icons/location.png", height: 3.8.h),
                  Image.asset("assets/icons/person.png", height: 3.5.h)
                ])));
  }
}
