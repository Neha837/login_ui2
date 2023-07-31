import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 4.h, right: 4.h),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Color(0xff5B88FB),
                  size: 30,
                ),
                SizedBox(width: 3.w),
                Text(
                  "You're Done!",
                  style: GoogleFonts.poppins(
                      color: Color(0xff5B88FB),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "Okay, got it",
                  style: GoogleFonts.poppins(
                      color: Color(0xffFFFFFF),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(
              height: 3.5.h,
            ),
            Row(
              children: [
                Text(
                  "Congratulations! You're done! Don't forget to \n verify your email!",
                  style: GoogleFonts.poppins(
                      color: Color(0xff98AAC6), fontSize: 16.5.sp),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A verified email address is required to \n message members on Sweender.",
                  style: GoogleFonts.poppins(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "We sent a verification email to,\n",
                        style: GoogleFonts.poppins(
                            color: Color(0xffFFFFFF),
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: "dummyemail@email.com",
                        style: GoogleFonts.poppins(
                            color: Color(0xff5B88FB),
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.w400),
                      )
                    ])),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Text(
                  "Didn't get an email?",
                  style: GoogleFonts.poppins(
                      color: Color(0xffFFFFFF),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: 1.5.h),
            Container(
              height: 13.h,
              width: 100.w,
              padding: EdgeInsets.all(2.h),
              decoration: BoxDecoration(
                  color: Color(0xff2C2F3A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icons/envelope.png",
                    height: 5.h,
                  ),
                  SizedBox(width: 2.5.w),
                  Expanded(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Check Spam Folder - ",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff5B88FB), fontSize: 14.5.sp)),
                          TextSpan(
                              text:
                                  "Sometimes our emails are misudentified as spam, so be sure to check your spam folder and mark us as “Not Spam” if you find your verification email there!",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff8CAAF5), fontSize: 14.sp))
                        ])),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Container(
              height: 13.h,
              width: 100.w,
              padding: EdgeInsets.all(2.h),
              decoration: BoxDecoration(
                  color: Color(0xff2C2F3A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icons/envelope2.png",
                    height: 5.h,
                  ),
                  SizedBox(width: 2.5.w),
                  Expanded(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Change Email - ",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff5B88FB), fontSize: 14.5.sp)),
                          TextSpan(
                              text:
                                  "If you mistyped your email address (you can check above), or you just want to try a different account, you can ",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff8CAAF5), fontSize: 14.sp)),
                          TextSpan(
                              text: "change your email address here.",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff5B88FB),
                                  fontSize: 14.5.sp,
                                  decoration: TextDecoration.underline)),
                        ])),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Container(
              height: 9.h,
              width: 100.w,
              padding: EdgeInsets.all(2.h),
              decoration: BoxDecoration(
                  color: Color(0xff2C2F3A),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icons/envelope3.png",
                    height: 5.h,
                  ),
                  SizedBox(width: 3.w),
                  Expanded(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Resend Email - ",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff5B88FB), fontSize: 14.5.sp)),
                          TextSpan(
                              text:
                                  "We can send you a verification email again. ",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff8CAAF5), fontSize: 14.sp)),
                          TextSpan(
                              text: "Resend your verification email.",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff5B88FB),
                                  fontSize: 14.5.sp,
                                  decoration: TextDecoration.underline)),
                        ])),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.5.h),
            Container(
              height: 7.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/group.png"))),
              child: Text(
                "Show me Established Members",
                style: GoogleFonts.poppins(
                    color: Color(0xffFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
