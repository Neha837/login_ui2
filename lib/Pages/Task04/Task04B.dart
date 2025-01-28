import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task04B extends StatefulWidget {
  const Task04B({super.key});

  @override
  State<Task04B> createState() => _Task04BState();
}

class _Task04BState extends State<Task04B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Search-Newest.png"),
                    fit: BoxFit.fill)),
            child: Padding(
                padding: EdgeInsets.only(top: 6.5.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 4.h),
                      child: Row(children: [
                        Text("New Search",
                            style: GoogleFonts.poppins(
                                color: Color(0xffFFFFFF),
                                fontSize: 17.5.sp,
                                fontWeight: FontWeight.w600)),
                        Spacer(),
                        Image.asset("assets/images/v1.png", height: 2.2.h),
                        SizedBox(width: 5.w),
                        Image.asset("assets/images/v2.png", height: 2.2.h),
                        SizedBox(width: 5.w),
                        Image.asset("assets/images/v3.png", height: 2.2.h)
                      ])),
                  Padding(
                      padding: EdgeInsets.only(
                          top: 5.h, left: 5.h, right: 5.h, bottom: 1.5.h),
                      child: Row(children: [
                        Text("Nearest",
                            style: GoogleFonts.poppins(
                                color: Color(0xff98AAC6),
                                fontSize: 15.5.sp,
                                fontWeight: FontWeight.w400)),
                        Spacer(),
                        Text("Recently Acive",
                            style: GoogleFonts.poppins(
                                color: Color(0xff98AAC6),
                                fontSize: 15.5.sp,
                                fontWeight: FontWeight.w400)),
                        Spacer(),
                        Text("Newest",
                            style: GoogleFonts.poppins(
                                color: Color(0xff5276D4),
                                fontSize: 15.5.sp,
                                fontWeight: FontWeight.w400))
                      ])),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 2.h),
                      child: Row(children: [
                        Container(
                            height: .3.h,
                            width: 58.w,
                            decoration:
                                BoxDecoration(color: Color(0xff98AAC6))),
                        Container(
                            height: .3.h,
                            width: 30.w,
                            decoration: BoxDecoration(color: Color(0xff5276D4)))
                      ])),
                  SizedBox(height: 2.h),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 4.h),
                      child: Row(children: [
                        Container(
                            child: Image.asset("assets/images/profile.png",
                                fit: BoxFit.cover, height: 22.h)),
                        SizedBox(width: 2.w),
                        Image.asset("assets/images/profile2.png",
                            fit: BoxFit.cover, height: 22.h)
                      ])),
                  SizedBox(height: .8.h),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 4.h),
                      child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Image.asset("assets/images/profile3.png",
                                    fit: BoxFit.cover, height: 22.h)),
                            SizedBox(width: 2.w),
                            Image.asset("assets/images/profile4.png",
                                fit: BoxFit.cover, height: 22.h)
                          ])),
                  SizedBox(height: .8.h),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 4.h),
                      child: Row(children: [
                        Container(
                            child: Image.asset("assets/images/profile5.png",
                                fit: BoxFit.cover, height: 22.h))
                      ])),
                  SizedBox(height: 2.h),
                  Expanded(
                      child: Container(
                          // height: 8.h,
                          // width: 100.w,
                          decoration: BoxDecoration(color: Color(0xff2C2F3A)),
                          child: Padding(
                              padding: EdgeInsets.all(1.5.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(children: [
                                      Icon(Icons.search,
                                          color: Color(0xff7991D0), size: 22),
                                      Text("Search",
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff5B88FB),
                                              fontSize: 11.5.sp))
                                    ]),
                                    Column(children: [
                                      Icon(Icons.favorite,
                                          color: Colors.white, size: 22),
                                      Text("Interests",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 11.5.sp))
                                    ]),
                                    Column(children: [
                                      Icon(Icons.account_box,
                                          color: Colors.white, size: 22),
                                      Text("Seaking",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 11.5.sp))
                                    ]),
                                    Column(children: [
                                      Icon(Icons.chat,
                                          color: Colors.white, size: 22),
                                      Text("Messages",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 11.5.sp))
                                    ]),
                                    Column(children: [
                                      Icon(Icons.menu,
                                          color: Colors.white, size: 22),
                                      Text("More",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 11.5.sp))
                                    ])
                                  ]))))
                ]))));
  }
}
