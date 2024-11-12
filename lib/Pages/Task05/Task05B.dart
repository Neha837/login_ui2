import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task05/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task05B extends StatefulWidget {
  const Task05B({super.key});

  @override
  State<Task05B> createState() => _Task05BState();
}

class _Task05BState extends State<Task05B> {
  TextEditingController _EstablishmentName = TextEditingController();
  TextEditingController _Username = TextEditingController();
  TextEditingController _street = TextEditingController();
  TextEditingController _country = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _zip = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _telephone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _website = TextEditingController();
  TextEditingController _contactName = TextEditingController();
  TextEditingController _contactEmail = TextEditingController();
  TextEditingController _password = TextEditingController();

  Widget textfield(String hint, TextEditingController controller) {
    return Column(
      children: [
        TextField(
            controller: controller,
            onChanged: (_) {
              setState(() {});
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF2F2F2),
              hintText: hint,
              hintStyle: GoogleFonts.montserrat(
                  color: Color(0xff404040),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1.5, color: Color(0xff002065))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.only(left: 3.h),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, size: 24, color: Colors.black),
            title: Row(children: [
              Spacer(),
              textwidget("Edit profile",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 20.sp)
            ])),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                    left: 3.5.h, right: 3.5.h, bottom: 3.h, top: 1.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textwidget("Establishment - Add/Edit Profile",
                          fontsize: 15.5.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      SizedBox(height: 2.h),
                      Container(
                          height: 20.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/+.png", height: 2.h),
                                SizedBox(height: 2.5.h),
                                textwidget("Upload banner Image",
                                    fontsize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)
                              ])),
                      SizedBox(height: 2.5.h),
                      Center(
                          child: CircleAvatar(
                              radius: 8.3.h,
                              backgroundColor: Color(0xffEBEBEB),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/icons/+.png",
                                        height: 2.h),
                                    SizedBox(height: 2.5.h),
                                    textwidget("Upload profile Image",
                                        color: Colors.black,
                                        fontsize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        textAlign: TextAlign.center)
                                  ]))),
                      SizedBox(height: 2.5.h),
                      textfield('Establishment Name', _EstablishmentName),
                      SizedBox(height: 1.h),
                      textfield('Username', _Username),
                      SizedBox(height: 2.h),
                      textwidget("Address",
                          fontsize: 15.5.sp, fontWeight: FontWeight.bold),
                      SizedBox(height: 1.h),
                      textfield('street', _street),
                      SizedBox(height: 1.h),
                      textfield('City', _city),
                      SizedBox(height: 1.h),
                      textfield('Zip/ Postcode', _zip),
                      SizedBox(height: 1.h),
                      textfield('State/Province', _state),
                      SizedBox(height: 1.h),
                      textfield('Country', _country),
                      SizedBox(height: 2.5.h),
                      textwidget("Contact",
                          fontsize: 15.5.sp, fontWeight: FontWeight.bold),
                      SizedBox(height: 1.h),
                      textfield('Telephone', _telephone),
                      SizedBox(height: 1.h),
                      textfield('Email', _email),
                      SizedBox(height: 1.h),
                      textfield('Website', _website),
                      SizedBox(height: 1.h),
                      textfield('Contact Name', _contactName),
                      SizedBox(height: 1.h),
                      textfield('Contact Email (hidden)', _contactEmail),
                      SizedBox(height: 1.h),
                      textfield('Password (hidden)', _password),
                      SizedBox(height: 2.h),
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Description",
                                        fontsize: 15.5.sp,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          textwidget("180 Characters",
                                              color: Color(0xff8E8E8E),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w500)
                                        ]),
                                    SizedBox(height: 1.h),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: TextField(
                                            maxLines: 4,
                                            decoration: InputDecoration(
                                                hintText: "Short Description",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.sp),
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(2.h)))),
                                    SizedBox(height: 1.h),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          textwidget("180 Characters",
                                              color: Color(0xff8E8E8E),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w500)
                                        ]),
                                    SizedBox(height: 1.h),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: TextField(
                                            maxLines: 6,
                                            decoration: InputDecoration(
                                                hintText: "More",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.sp),
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.all(2.h))))
                                  ]))),
                      SizedBox(height: 1.5.h),
                      Container(
                          height: 7.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.expand_more,
                                        color: Colors.transparent),
                                    Spacer(),
                                    textwidget("Select Type",
                                        fontsize: 17.sp,
                                        fontWeight: FontWeight.bold),
                                    Spacer(),
                                    Icon(Icons.expand_more,
                                        color: Color(0xff002065), size: 30)
                                  ]))),
                      SizedBox(height: 3.h),
                      Center(
                          child: textwidget("Opening",
                              fontsize: 16.sp, fontWeight: FontWeight.bold)),
                      SizedBox(height: .5.h),
                      textwidget("Monday",
                          fontsize: 15.5.sp, fontWeight: FontWeight.bold),
                      SizedBox(height: .5.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 6.h,
                                width: 42.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textwidget("From",
                                              fontsize: 13.5.sp,
                                              fontWeight: FontWeight.bold),
                                          textwidget("9:00 am",
                                              color: Color(0xff2F2F2F),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w600)
                                        ]))),
                            Container(
                                height: 6.h,
                                width: 42.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textwidget("To",
                                              fontsize: 13.5.sp,
                                              fontWeight: FontWeight.bold),
                                          textwidget("1:00 am",
                                              color: Color(0xff2F2F2F),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w600)
                                        ])))
                          ]),
                      SizedBox(height: 1.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 6.h,
                                width: 42.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textwidget("From",
                                              fontsize: 13.5.sp,
                                              fontWeight: FontWeight.bold),
                                          textwidget("2:00 pm",
                                              color: Color(0xff2F2F2F),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w600)
                                        ]))),
                            Container(
                                height: 6.h,
                                width: 42.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 1.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textwidget("To",
                                              fontsize: 13.5.sp,
                                              fontWeight: FontWeight.bold),
                                          textwidget("4:00 pm",
                                              color: Color(0xff2F2F2F),
                                              fontsize: 15.5.sp,
                                              fontWeight: FontWeight.w600)
                                        ])))
                          ]),
                      SizedBox(height: 1.5.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Tuesday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Wednesday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Thursday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Friday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Saturday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 1.h),
                      textwidget("Sunday",
                          fontWeight: FontWeight.bold, fontsize: 15.5.sp),
                      SizedBox(height: 1.h),
                      Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff002065), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textwidget("Add Session", fontsize: 16.5.sp)
                                  ]))),
                      SizedBox(height: 7.h),
                      Row(children: [
                        textwidget("Optional", color: Colors.transparent),
                        Spacer(),
                        textwidget("Social Media Links",
                            fontsize: 16.sp, fontWeight: FontWeight.bold),
                        Spacer(),
                        textwidget("Optional",
                            color: Color(0xff8E8E8E),
                            fontWeight: FontWeight.w700)
                      ]),
                      SizedBox(height: 1.5.h),
                      socialmediawidget("fb_logo.png"),
                      SizedBox(height: 1.5.h),
                      socialmediawidget("insta_logo.png"),
                      SizedBox(height: 1.5.h),
                      socialmediawidget("twitter_logo.png"),
                      SizedBox(height: 1.5.h),
                      socialmediawidget("whatsapp_logo.png"),
                      SizedBox(height: 5.h),
                      Container(
                          height: 45.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(children: [
                                Row(children: [
                                  textwidget("Upload images",
                                      fontWeight: FontWeight.bold,
                                      fontsize: 15.sp),
                                  Spacer(),
                                  textwidget("Minimum 1 Image",
                                      color: Color(0xff8E8E8E),
                                      fontWeight: FontWeight.w600,
                                      fontsize: 15.sp)
                                ]),
                                SizedBox(height: 2.h),
                                Container(
                                    height: 25.h,
                                    child: GridView.count(
                                        crossAxisCount: 4,
                                        mainAxisSpacing: 13,
                                        crossAxisSpacing: 10,
                                        padding: EdgeInsets.zero,
                                        childAspectRatio: 1,
                                        children: List.generate(
                                            8,
                                            ((index) => Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                child: Icon(Icons.add)))))),
                                SizedBox(height: 3.h),
                                Container(
                                    height: 4.5.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff203C78),
                                            width: 1.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                        child: textwidget("More",
                                            fontsize: 15.sp,
                                            fontWeight: FontWeight.w600)))
                              ]))),
                      SizedBox(height: 4.h),
                      Container(
                          height: 28.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffB5B5B5), width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Terms/Disclaimer",
                                        fontsize: 17.5.sp,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    Center(
                                        child: textwidget(
                                            "I promise that I have the authority to add\na profile for the above establishment.\nI understand that under the terms of\nservice the establishment may not hold\nNightly App accountable for losses\nincurred. We agree to abide by the Terms\n of Service and Privacy Policy",
                                            fontsize: 16.sp,
                                            color: Colors.black))
                                  ]))),
                      SizedBox(height: 2.h),
                      Container(
                          height: 7.h,
                          width: 90.w,
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xff002065),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: textwidget("Submit",
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              fontsize: 17.sp))
                    ]))));
  }
}
