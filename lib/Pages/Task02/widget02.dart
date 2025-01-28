import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customtextwithmonteserrat(String text,
    {fontsize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign}) {
  return Text(text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.montserrat(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? Color(0xffFFFFFF),
          decoration: textDecoration ?? TextDecoration.none));
}

Widget field(String hint, TextEditingController controller, bool errorCheck,
    String errorMessage, IconData icon, bool isPasswordshow) {
  return Column(children: [
    TextField(
        controller: controller,
        obscureText: isPasswordshow,
        decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Color(0xff002065), size: 3.h),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: GoogleFonts.montserrat(
                color: Color(0xff8E8E8E),
                fontSize: 15.5.sp,
                fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff002065))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: !errorCheck ? Color(0xffBFBFBF) : Colors.red)),
            contentPadding: EdgeInsets.only(
                top: 2.h, left: 2.5.h, bottom: 2.h, right: 2.h))),
    SizedBox(height: .5.h),
    if (errorCheck)
      Row(children: [
        SizedBox(width: 1.h),
        Icon(Icons.warning_rounded, color: Colors.red, size: 16),
        SizedBox(width: 1.h),
        Text(errorMessage,
            style: GoogleFonts.montserrat(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 14.sp))
      ])
  ]);
}

Widget customcontainer(String img, String text) {
  return Container(
      height: 51.sp,
      width: 50.sp,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffFFFFFF)),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(children: [
            Image.asset("assets/icons/$img", height: 13.h, width: 13.w),
            SizedBox(height: .5.h),
            customtextwithmonteserrat(text,
                fontWeight: FontWeight.w300, fontsize: 15.sp)
          ])));
}

Widget buttonwidget(String text, Function fun) {
  return InkWell(
      onTap: () {
        fun();
      },
      child: Container(
          height: 7.5.h,
          width: 85.w,
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xff002065),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(text,
              style: GoogleFonts.montserrat(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp))));
}
