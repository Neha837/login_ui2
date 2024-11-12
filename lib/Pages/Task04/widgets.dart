import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textwithpoppins(String text,
    {fontsize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign}) {
  return Text(text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? Color(0xff8CAAF5),
          decoration: textDecoration ?? TextDecoration.none));
}

Widget customcontainerwidget(String img, String heading, String description,
    {String underlinetext = ""}) {
  return Container(
      padding: EdgeInsets.all(2.h),
      decoration: BoxDecoration(
          color: Color(0xff2C2F3A), borderRadius: BorderRadius.circular(15)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset("assets/icons/$img", height: 4.5.h),
        SizedBox(width: 4.w),
        Expanded(
            child: RichText(
                // textAlign: TextAlign.left,
                text: TextSpan(children: [
          TextSpan(
              text: heading,
              style: GoogleFonts.poppins(
                  color: Color(0xff5B88FB), fontSize: 14.5.sp)),
          TextSpan(
              text: description,
              style: GoogleFonts.poppins(
                  color: Color(0xff8CAAF5), fontSize: 14.sp)),
          TextSpan(
              text: underlinetext,
              style: GoogleFonts.poppins(
                  color: Color(0xff5B88FB),
                  fontSize: 14.5.sp,
                  decoration: TextDecoration.underline))
        ])))
      ]));
}
