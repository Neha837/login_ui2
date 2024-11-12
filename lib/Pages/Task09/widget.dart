import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textwidgetmontserrat(String text,
    {fontsize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
    TextDecoration? textdecoration}) {
  return Text(text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.montserrat(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? Color(0xffFFFFFF),
          decoration: textdecoration ?? TextDecoration.none));
}

Widget customtextfield(
    String hint, TextEditingController controller, IconData icon) {
  return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          hintText: hint,
          hintStyle:
              GoogleFonts.montserrat(fontSize: 14.5.sp, color: Colors.white),
          prefixIcon: Icon(color: Colors.white, size: 2.5.h, icon),
          contentPadding: EdgeInsets.symmetric(horizontal: 2.h)));
}

Widget custombuttonnext(String text) {
  return Container(
      height: 6.h,
      width: 60.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0xffFEC842)),
      child: Center(
          child: textwidgetmontserrat("Next",
              color: Color(0xff042F57),
              fontsize: 15.5.sp,
              fontWeight: FontWeight.w600)));
}

Widget commentwidget(String img, String name, String dummytext) {
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    CircleAvatar(radius: 2.5.h, child: Image.asset("assets/images/$img")),
    SizedBox(width: 1.w),
    Container(
        height: 12.h,
        width: 74.w,
        decoration: BoxDecoration(
            color: Color(0xffEDEDED),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.5.h, vertical: 1.5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              textwidgetmontserrat(name,
                  color: Color(0xff042F57),
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left),
              SizedBox(height: .5.h),
              textwidgetmontserrat(dummytext,
                  color: Color(0xff6D6D6D), fontWeight: FontWeight.w500)
            ])))
  ]);
}

Widget customcatogery(
    String image, String text, double height, Color? color, double width) {
  return Container(
      // height: 20.h,
      // width: 20.h,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(23))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset("assets/icons/$image", height: 9.h),
        // SizedBox(height: 2.h),
        textwidgetmontserrat(text,
            fontsize: 18.5.sp, fontWeight: FontWeight.bold)
      ]));
}

Widget favitems(String image, String text, String price, String pricedollar) {
  return Container(
      height: 20.h,
      decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: EdgeInsets.all(2.5.h),
          child: Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset("assets/images/$image", height: 12.h),
              Spacer(),
              Row(children: [
                Icon(Icons.favorite, color: Colors.red, size: 2.5.h),
                SizedBox(width: .5.w),
                textwidgetmontserrat("432",
                    color: Colors.red,
                    fontsize: 14.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(width: 5.w),
                Image.asset("assets/icons/msg_icon.png", height: 2.2.h),
                SizedBox(width: 1.w),
                textwidgetmontserrat("21",
                    color: Color(0xff797979),
                    fontsize: 14.sp,
                    fontWeight: FontWeight.w600)
              ])
            ]),
            Spacer(),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              textwidgetmontserrat(text,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 15.5.sp,
                  textAlign: TextAlign.start),
              Spacer(),
              Container(
                  height: 2.5.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                      color: Color(0xffFF4539),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                      child: textwidgetmontserrat("50% off",
                          fontWeight: FontWeight.w600, fontsize: 14.sp))),
              SizedBox(height: .5.h),
              Row(children: [
                textwidgetmontserrat(price,
                    color: Color(0xffBBBBBB),
                    fontsize: 18.sp,
                    fontWeight: FontWeight.w500),
                SizedBox(width: 1.w),
                textwidgetmontserrat(pricedollar,
                    color: Color(0xff01B3E3),
                    fontsize: 20.sp,
                    fontWeight: FontWeight.w600)
              ])
            ])
          ])));
}
