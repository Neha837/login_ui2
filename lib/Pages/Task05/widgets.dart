import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Text textwidget(
  String text, {
  fontsize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  Color? color,
  TextDecoration? textDecoration,
}) {
  return Text(text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
          fontSize: fontsize ?? 14.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? Color(0xFF002065),
          decoration: textDecoration ?? TextDecoration.none));
}

Widget field(TextEditingController controller, String hint) {
  return Column(children: [
    TextField(
        controller: controller,
        onChanged: (_) {},
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffFFFFFF),
            hintText: hint,
            hintStyle: GoogleFonts.montserrat(
                color: Color(0xff8E8E8E),
                fontWeight: FontWeight.w500,
                fontSize: 17.sp),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1.5, color: Color(0xff002065))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.only(left: 3.h)))
  ]);
}

Widget primarybutton(String text, Function? fun,
    {Color? color, Color? borderColor, Color? textColor}) {
  return InkWell(
      onTap: () {
        fun;
      },
      child: Container(
          height: 7.h,
          width: 90.w,
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color ?? Colors.transparent,
              border: Border.all(color: borderColor ?? Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(text,
              style: GoogleFonts.montserrat(
                  color: textColor ?? Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp))));
}

Widget rowwithswitch(String text, bool isSwitched) {
  return Row(children: [
    Text(text,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500, color: Color(0xff434343))),
    Spacer(),
    Switch(
        activeColor: Color(0xFF002065),
        activeTrackColor: Colors.white,
        inactiveTrackColor: Color(0xFF002065),
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        })
  ]);
}

void setState(Null Function() param0) {}
Widget iconwithtext(IconData icon, String hint) {
  return TextField(
      decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 6.h),
          prefixIcon: Icon(icon, color: Color(0xff002065), size: 22),
          hintText: hint,
          hintStyle: GoogleFonts.montserrat(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xff002065)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.only(left: 2.h, right: 2.h)));
}

Row socialmediawidget(String logo) {
  return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    Image.asset("assets/logos/$logo", height: 3.5.h),
    SizedBox(width: 3.w),
    Container(
        height: 5.h,
        width: 75.w,
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15))))
  ]);
}

Widget regionwidget(String region) {
  return Container(
      height: 6.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Color(0xff002065),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: EdgeInsets.only(left: 3.5.h, right: 2.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            textwidget(region, fontsize: 15.5.sp, color: Colors.white),
            Icon(Icons.check, color: Colors.white, size: 22)
          ])));
}

Widget regiwidget(String region) {
  return Container(
      height: 6.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: EdgeInsets.only(left: 3.5.h, right: 2.h),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            textwidget(region, fontsize: 15.5.sp, color: Color(0xff797979))
          ])));
}
