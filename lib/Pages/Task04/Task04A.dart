import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task04/Task04B.dart';
import 'package:login_ui/Pages/Task04/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task04A extends StatefulWidget {
  const Task04A({super.key});

  @override
  State<Task04A> createState() => _Task04AState();
}

class _Task04AState extends State<Task04A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                    top: 3.h, left: 4.h, right: 4.h, bottom: 1.h),
                child: Column(children: [
                  Row(children: [
                    Icon(Icons.arrow_back, color: Color(0xff5B88FB), size: 30),
                    SizedBox(width: 3.w),
                    textwithpoppins("You're Done!",
                        color: Color(0xff5B88FB), fontsize: 18.sp),
                    Spacer(),
                    textwithpoppins("Okay, got it",
                        color: Color(0xffFFFFFF),
                        fontsize: 15.sp,
                        fontWeight: FontWeight.w500,
                        textDecoration: TextDecoration.underline)
                  ]),
                  SizedBox(height: 3.h),
                  Row(children: [
                    Expanded(
                        child: textwithpoppins(
                            "Congratulations! You're done! Don't forget to verify your email!",
                            color: Color(0xff98AAC6),
                            fontsize: 16.5.sp))
                  ]),
                  SizedBox(height: 3.h),
                  Row(children: [
                    Expanded(
                        child: textwithpoppins(
                            "A verified email address is required to message members on Sweender.",
                            color: Color(0xffFFFFFF),
                            fontsize: 16.sp))
                  ]),
                  SizedBox(height: 1.5.h),
                  Row(children: [
                    Expanded(
                        child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "We sent a verification email to, ",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15.5.sp,
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: "dummyemail@email.com",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff5B88FB),
                                      fontSize: 15.5.sp,
                                      fontWeight: FontWeight.w400))
                            ])))
                  ]),
                  SizedBox(height: 4.h),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: textwithpoppins("Didn't get an email?",
                          color: Color(0xffFFFFFF), fontsize: 15.sp)),
                  SizedBox(height: 1.5.h),
                  customcontainerwidget("envelope.png", "Check Spam Folder - ",
                      "Sometimes our emails are misudentified as spam, so be sure to check your spam folder and mark us as “Not Spam” if you find your verification email there!"),
                  SizedBox(height: 2.h),
                  customcontainerwidget("envelope2.png", "Change Email - ",
                      "If you mistyped your email address (you can check above), or you just want to try a different account, you can ",
                      underlinetext: "change your email address here."),
                  SizedBox(height: 2.h),
                  customcontainerwidget("envelope3.png", "Resend Email - ",
                      "We can send you a verification email again. ",
                      underlinetext: "Resend your verification email."),
                  SizedBox(height: 6.5.h),
                  InkWell(
                      onTap: () {
                        Get.to(Task04B());
                      },
                      child: Container(
                        height: 7.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xffE5324E),
                                  Color(0xff588AFF)
                                ])),
                        child: textwithpoppins("Show me Established Members",
                            color: Color(0xffFFFFFF), fontsize: 16.sp),
                      ))
                ]))));
  }
}
