import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Text textwidget2(
  String text, {
  FontWeight? fontWeight,
  fontsize,
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
}) {
  return Text(text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? Color(0xff222222),
          decoration: textDecoration ?? TextDecoration.none));
}

Widget chooseplanwidget(
    String planname, color, String description, descriptioncolor, bordercolor,
    {String pricepertax = "", bool isArrow = false}) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(color: bordercolor, width: 1.2),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding:
              EdgeInsets.only(left: 3.h, right: 3.h, top: 3.h, bottom: 1.5.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              textwidget2(planname,
                  fontsize: 16.5.sp, fontWeight: FontWeight.bold, color: color),
              Spacer(),
              textwidget2(pricepertax,
                  fontsize: 16.5.sp, fontWeight: FontWeight.bold)
            ]),
            SizedBox(height: 1.h),
            textwidget2(description,
                fontsize: 15.5.sp,
                color: descriptioncolor,
                textAlign: TextAlign.left),
            SizedBox(height: 1.h),
            isArrow
                ? Row(
                    children: [
                      Spacer(),
                      Icon(Icons.arrow_forward, size: 22, color: color),
                    ],
                  )
                : SizedBox(height: 1.h)
          ])));
}

Widget containerwidget(String text) {
  return Container(
      height: 3.h,
      decoration: BoxDecoration(
          color: Color(0xffD8DEFF),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Text(text,
              maxLines: 1,
              style: GoogleFonts.montserrat(
                  color: Color(0xff5571FC),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp),
              textAlign: TextAlign.center)));
}

Widget containerbox(String logo, String name, String textunderline,
    String description, String image) {
  return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 245, 245),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
          child: Column(children: [
            Row(children: [
              Image.asset("assets/images/$logo", height: 3.5.h),
              SizedBox(width: 1.w),
              textwidget2(name, fontWeight: FontWeight.bold),
              Spacer(),
              textwidget2(textunderline,
                  textDecoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500)
            ]),
            SizedBox(height: 1.h),
            textwidget2(description, fontsize: 15.5.sp),
            SizedBox(height: 1.h),
            Image.asset("assets/images/$image"),
            SizedBox(height: 1.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(Icons.phone_in_talk, color: Color(0xff5571FC), size: 20),
              SizedBox(width: 3.h),
              Icon(Icons.mail, color: Color(0xff5571FC), size: 20),
              SizedBox(width: 3.h),
              Column(children: [
                Icon(Icons.chat, color: Color(0xff5571FC), size: 20),
                textwidget2("12",
                    color: Color(0xff5571FC), fontWeight: FontWeight.bold)
              ]),
              SizedBox(width: 3.h),
              Column(children: [
                Icon(Icons.favorite, color: Color(0xff5571FC), size: 20),
                textwidget2("433",
                    color: Color(0xff5571FC), fontWeight: FontWeight.bold)
              ]),
              SizedBox(width: 3.h),
              Icon(Icons.person_add_alt_1_rounded,
                  color: Color(0xff5571FC), size: 20),
              Spacer(),
              Icon(Icons.share, color: Color(0xff5571FC), size: 20)
            ])
          ])));
}
