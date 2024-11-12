import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Text text(String text,
    {fontsize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    TextDecoration? textDecoration}) {
  return Text(text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          decoration: textDecoration ?? TextDecoration.none,
          color: color ?? Color(0xff121212)));
}

Widget popularcard() {
  return Stack(children: [
    Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: Container(
            height: 20.h,
            width: 28.w,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDE8814), width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("6",
                  style: GoogleFonts.montserrat(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffDE8814))),
              SizedBox(height: 1.h),
              Text("Months",
                  style: GoogleFonts.montserrat(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffDE8814))),
              SizedBox(height: 2.h),
              Text("\$897 dollars",
                  style: GoogleFonts.montserrat(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffDE8814))),
              SizedBox(height: 1.h),
              Text("(Save 2 months)",
                  style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffDE8814)))
            ]))),
    Positioned(
        top: -2,
        left: 6,
        child: Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Container(
                width: 25.w,
                height: 3.h,
                decoration: BoxDecoration(
                    color: Color(0xffC1832D),
                    borderRadius: BorderRadius.circular(46)),
                child: Center(
                    child: Text("Most Popular",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700))))))
  ]);
}
