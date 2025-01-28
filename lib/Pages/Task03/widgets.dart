import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customtextwithpoppins(String text,
    {fontsize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? textDecoration,
    TextAlign? textAlign}) {
  return Text(text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.poppins(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? Color(0xffFFFFFF),
          decoration: textDecoration ?? TextDecoration.none));
}

Widget listtile(String title, String subtitle, String image) {
  return ListTile(
      leading: Image.asset("assets/images/$image"),
      title: Text(title, style: GoogleFonts.poppins(color: Color(0xffFFFFFF))),
      subtitle:
          Text(subtitle, style: GoogleFonts.poppins(color: Color(0xff8F8F8F))),
      dense: true);
}

Widget chattingwidget({
  String image = "",
  String message = "",
  bool isMe = false,
}) {
  return Padding(
      padding: EdgeInsets.only(bottom: 1.w, top: 1.w),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        if (isMe) Spacer(),
        if (isMe)
          if (message != "")
            Container(
                constraints: BoxConstraints(maxWidth: 60.w, minWidth: 10),
                decoration: BoxDecoration(
                    color: Color(0xff31D8E3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(20))),
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: customtextwithpoppins(message,
                        fontsize: 15.sp, fontWeight: FontWeight.w400))),
        if (!isMe)
          Container(child: Image.asset("assets/images/pic1.png", height: 7.h)),
        if (!isMe) SizedBox(width: 3.w),
        if (!isMe)
          if (message != "")
            Container(
                constraints: BoxConstraints(maxWidth: 60.w, minWidth: 10),
                decoration: BoxDecoration(
                    color: Color(0xff383B42),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(0))),
                child: Padding(
                    padding: EdgeInsets.all(12),
                    child: customtextwithpoppins(message,
                        fontsize: 15.sp, fontWeight: FontWeight.w400))),
        if (image != "")
          Container(
              height: 18.h,
              // constraints: BoxConstraints(maxHeight: 20.h, maxWidth: 40.w),
              child: Image.asset("assets/images/$image"))
      ]));
}
