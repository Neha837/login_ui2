import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Text textwithopensans(
  String text, {
  fontsize,
  FontWeight? fontWeight,
  Color? color,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
}) {
  return Text(text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.openSans(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          decoration: textDecoration ?? TextDecoration.none,
          color: color ?? Color(0xff000000)));
}

Widget cutomexplorewidget(
    String image, String name, String day, String discount) {
  return Row(children: [
    Container(
        height: 26.h,
        width: 37.w,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset("assets/images/$image", fit: BoxFit.fill),
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 1.5.h, bottom: 1.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textwithopensans(name,
                        fontsize: 16.sp, fontWeight: FontWeight.bold),
                    SizedBox(height: 1.h),
                    textwithopensans(day,
                        color: Color(0xff7E7E7E), fontsize: 14.5.sp),
                    textwithopensans(discount,
                        color: Color(0xff7E7E7E), fontsize: 14.5.sp)
                  ]))
        ]))
  ]);
}

Widget customlastseenwidget(
    String image, String name, String day, String discount) {
  return Container(
      height: 31.h,
      width: 70.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset("assets/images/$image", fit: BoxFit.fill),
        Padding(
            padding:
                EdgeInsets.only(left: 2.h, top: .8.h, right: 2.h, bottom: 1.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                textwithopensans(name,
                    fontsize: 16.sp, fontWeight: FontWeight.bold),
                Spacer(),
                Icon(Icons.favorite_outline, size: 3.5.h)
              ]),
              SizedBox(height: 1.h),
              textwithopensans(day,
                  color: Color(0xff7E7E7E), fontsize: 14.5.sp),
              textwithopensans(discount,
                  color: Color(0xff7E7E7E), fontsize: 14.5.sp)
            ]))
      ]));
}

Widget hosposcreenwidget(String image, String name, String day, String discount,
    String distance, String maxnumber) {
  return Container(
      height: 40.5.h,
      width: 90.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(children: [
        Stack(children: [
          Container(
              height: 28.h,
              width: 100.w,
              child: Image.asset("assets/images/$image", fit: BoxFit.fill)),
          Positioned(
              top: 2.h,
              left: 2.h,
              child: Container(
                  height: 3.5.h,
                  width: 6.5.h,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                      child: textwithopensans(distance,
                          color: Color(0xffD0D0D0), fontsize: 15.sp))))
        ]),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                textwithopensans(name,
                    fontsize: 17.sp, fontWeight: FontWeight.bold),
                Spacer(),
                Icon(Icons.favorite_outline)
              ]),
              SizedBox(height: 1.5.h),
              textwithopensans(day, fontsize: 15.sp, color: Color(0xff7E7E7E)),
              Row(children: [
                textwithopensans(discount,
                    fontsize: 15.sp, color: Color(0xff7E7E7E)),
                Spacer(),
                textwithopensans(maxnumber,
                    fontsize: 15.sp, color: Color(0xff7E7E7E))
              ])
            ]))
      ]));
}
