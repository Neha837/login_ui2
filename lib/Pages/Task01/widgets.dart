import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customtextwidget(String text,
    {fontsize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    TextDecoration? textdecoration}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.poppins(
        fontSize: fontsize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? Color(0xffFFFFFF),
        decoration: textdecoration ?? TextDecoration.none),
  );
}

Widget customsignupbutton(String text, Function ontap) {
  return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
          height: 7.h,
          width: 90.w,
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xff31D8E3),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ))));
}

Widget customsocialmediabutton(String imgPath, Function fun) {
  return InkWell(
      onTap: () {
        fun();
      },
      child: Container(
          height: 7.h,
          width: 27.w,
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Image.asset(imgPath, fit: BoxFit.contain)),
          decoration: BoxDecoration(
              color: Color(0xff1F2126),
              border: Border.all(color: Color(0xff383B42)),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(13)))));
}

Widget field(
    String title,
    String hint,
    TextEditingController controller,
    bool errorCheck,
    String errorMessage,
    bool isRightIcons,
    bool isPasswordIcons) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
        padding: EdgeInsets.only(left: 10),
        child: customtextwidget(title,
            fontWeight: FontWeight.w500, fontsize: 16.sp)),
    SizedBox(height: 1.h),
    TextField(
        controller: controller,
        obscureText: isPasswordIcons,
        style: TextStyle(color: Color(0xffFFFFFF)),
        decoration: InputDecoration(
            suffixIcon: isRightIcons
                ? InkWell(
                    onTap: () {},
                    child: Icon(
                        isPasswordIcons
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white,
                        size: 2.3.h))
                : null,
            hintText: hint,
            hintStyle: GoogleFonts.poppins(
                color: Color(0xff8F8F8F),
                fontWeight: FontWeight.w500,
                fontSize: 15.sp),
            contentPadding: EdgeInsets.only(
                top: 2.h, left: 2.5.h, bottom: 2.h, right: 2.5.h),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1.5, color: Color(0xff31D8E3))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                    width: 1,
                    color: !errorCheck ? Color(0xff8F8F8F) : Colors.red)))),
    SizedBox(height: .5.h),
    if (errorCheck)
      Row(children: [
        SizedBox(width: 1.h),
        Icon(Icons.warning_rounded, color: Colors.red, size: 18),
        SizedBox(width: 1.h),
        customtextwidget(errorMessage,
            color: Colors.red, fontWeight: FontWeight.w500)
      ])
  ]);
}
