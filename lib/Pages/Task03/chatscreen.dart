import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _PageState();
}

class _PageState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F2126),
      body: SafeArea(
          child: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                      color: Color(0xff292B31),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Image.asset(
                  "assets/icons/vector.png",
                  height: 6.h,
                ),
              ),
              Spacer(),
              Container(
                height: 4.h,
                width: 4.h,
                decoration: BoxDecoration(
                    color: Color(0xff292B31),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  Icons.error,
                  color: Color(0xffFFFFFF),
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff31D8E3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: EdgeInsets.only(top: 2.2.h),
              child: Column(
                children: [
                  Text(
                    "Yusuf Aziz",
                    style: GoogleFonts.poppins(
                        color: Color(0xffFFFFFF),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2.2.h),
                  Expanded(
                    child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Color(0xff2C2E34),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.only(
                                  top: 1.5.h,
                                  left: 2.h,
                                  right: 2.h,
                                  bottom: 2.h),
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Thu,02 Sep,09:32",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 10.h,
                                        width: 62.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff383B42),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.8.h),
                                          child: Text(
                                            "Hi, mate! How are you\ndoing?",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 6.h,
                                        width: 14.w,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                        color: Colors.transparent,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 10.h,
                                        width: 75.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff31D8E3),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.8.h),
                                          child: Text(
                                            "I'm great! And you? Do you still live\nin Riyadh?",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                        color: Colors.transparent,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 6.5.h,
                                        width: 66.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff383B42),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Center(
                                          child: Text(
                                            "I'm doing great as well, brother!",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 6.h,
                                        width: 8.w,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                      ),
                                      SizedBox(width: 2.8.w),
                                      Container(
                                        height: 10.h,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff383B42),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.8.h),
                                          child: Text(
                                            "Yeah I do. It's great to live in here.\nYou have to come over next time",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Spacer()
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                        color: Colors.transparent,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 10.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff31D8E3),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.8.h),
                                          child: Text(
                                            "That's\ngreat!",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                      ),
                                      SizedBox(width: 3.w),
                                      Container(
                                        height: 17.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/rectangle.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 6.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Container(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/pic1.png",
                                        height: 7.5.h,
                                        color: Colors.transparent,
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 10.h,
                                        width: 76.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff31D8E3),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(20))),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.8.h),
                                          child: Text(
                                            "I'll definetly come to your house\nsoon!?",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 16.5.sp,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100.w,
                            padding: EdgeInsets.only(
                                left: 1.h, right: 1.h, top: 1.h, bottom: 2.5.h),
                            decoration: BoxDecoration(
                                color: Color(0xff1F2126),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.camera_enhance,
                                    color: Color(0xff898989),
                                    size: 30,
                                  ),
                                  SizedBox(width: .5.h),
                                  Expanded(
                                    child: TextField(
                                      style:
                                          TextStyle(color: Color(0xffFFFFFF)),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xff272930),
                                          hintText: "Type your message...",
                                          hintStyle: GoogleFonts.poppins(
                                              color: Color(0xff8F8F8F),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(18)),
                                          contentPadding: EdgeInsets.all(2.h)),
                                    ),
                                  ),
                                  SizedBox(width: .5.h),
                                  Icon(
                                    Icons.send,
                                    size: 30,
                                    color: Color(0xff31D8E3),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
