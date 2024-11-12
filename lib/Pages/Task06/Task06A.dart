import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task06/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task06A extends StatefulWidget {
  const Task06A({super.key});

  @override
  State<Task06A> createState() => _Task06AState();
}

class _Task06AState extends State<Task06A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/first.png"),
                    fit: BoxFit.fill)),
            child: Center(
                child: Container(
                    height: 67.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFC38631),
                              Color(0xffffffff),
                              Color(0xffffffff),
                              Color(0xffffffff)
                            ])),
                    child: Padding(
                        padding: EdgeInsets.only(top: 5.h, bottom: 2.h),
                        child: Column(children: [
                          text("Get Meetworth Gold",
                              color: Color(0xff121212),
                              fontsize: 20.sp,
                              fontWeight: FontWeight.w600),
                          SizedBox(height: 3.h),
                          CircleAvatar(
                              radius: 5.h,
                              backgroundColor: Color(0xffC2852E),
                              child: CircleAvatar(
                                  radius: 4.7.h,
                                  backgroundColor: Color(0xffffffff),
                                  child: CircleAvatar(
                                      radius: 4.4.h,
                                      backgroundImage: AssetImage(
                                          "assets/images/ellipse.png"),
                                      child: CircleAvatar(
                                          radius: 3.4.h,
                                          backgroundColor: Color(0xffC1832D),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.thumb_up_alt_rounded,
                                                    size: 14,
                                                    color: Colors.white),
                                                text("3+",
                                                    fontsize: 15.sp,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600)
                                              ]))))),
                          SizedBox(height: 2.h),
                          text(
                              "Browse up and swipe up\nunlimited profiles per day.",
                              fontsize: 15.5.sp,
                              fontWeight: FontWeight.w600),
                          SizedBox(height: 1.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color(0xffC1832D)),
                                SizedBox(width: 1.w),
                                CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color(0xffD5AB73)),
                                SizedBox(width: 1.w),
                                CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color(0xffD5AB73)),
                                SizedBox(width: 1.w),
                                CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color(0xffD5AB73))
                              ]),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 1.5.h,
                                  right: 1.5.h,
                                  top: 1.5.h,
                                  bottom: 5.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(children: [
                                      text("1",
                                          fontsize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                      text("Year",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                      SizedBox(height: 2.h),
                                      text("\$897 dollars",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(height: 1.h),
                                      text("(Save 3 months)",
                                          fontsize: 12.sp,
                                          fontWeight: FontWeight.w700)
                                    ]),
                                    SizedBox(width: 3.h),
                                    popularcard(),
                                    SizedBox(width: 3.h),
                                    Column(children: [
                                      text("1",
                                          fontsize: 20.sp,
                                          fontWeight: FontWeight.bold),
                                      text("Month",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w700),
                                      SizedBox(height: 2.h),
                                      text("\$97 dollars",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(height: 1.h)
                                    ])
                                  ])),
                          Container(
                              height: 6.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffC1832D),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: Center(
                                  child: Text("Continue",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white))))
                        ]))))));
  }
}
