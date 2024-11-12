import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Task06/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task06B extends StatefulWidget {
  const Task06B({super.key});

  @override
  State<Task06B> createState() => _Task06BState();
}

class _Task06BState extends State<Task06B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/meetworth.png"),
                    fit: BoxFit.fill)),
            child: Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 4.h),
                      child: Row(children: [
                        Image.asset("assets/images/align.png", height: 2.2.h),
                        Spacer(),
                        Image.asset("assets/images/meet.png", height: 2.5.h),
                        Spacer(),
                        Image.asset("assets/icons/share.png", height: 2.2.h)
                      ])),
                  SizedBox(height: 46.h),
                  Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(children: [
                        SizedBox(width: 2.5.h),
                        text("John Brick",
                            color: Color(0xffFFFFFF),
                            fontsize: 21.sp,
                            fontWeight: FontWeight.w600),
                        SizedBox(width: 1.5.h),
                        CircleAvatar(
                            radius: 1.3.h,
                            backgroundColor: Color(0xffA45F0C),
                            child: Center(
                                child: Icon(Icons.check,
                                    size: 16, color: Colors.white)))
                      ])),
                  SizedBox(height: 1.5.h),
                  Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(children: [
                        SizedBox(width: 2.5.h),
                        Container(
                            height: 3.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                                color: Color(0xffFBB040),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Center(
                                child: text("Arts & Entertainment Business",
                                    fontsize: 12.5.sp,
                                    fontWeight: FontWeight.w600))),
                        SizedBox(width: 1.h),
                        Container(
                            height: 3.h,
                            width: 12.w,
                            decoration: BoxDecoration(
                                color: Color(0xffD0D4D5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Center(
                                child: text("13.6 km",
                                    fontsize: 13.sp,
                                    fontWeight: FontWeight.w600)))
                      ])),
                  SizedBox(height: 2.h),
                  Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Row(children: [
                        SizedBox(width: 4.5.h),
                        text(
                            "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
                            color: Color(0xffB0B0B0))
                      ])),
                  SizedBox(height: 3.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset("assets/logos/linkedin.png", height: 2.5.h),
                    SizedBox(width: 4.5.h),
                    Image.asset("assets/logos/fb_light.png", height: 2.5.h),
                    SizedBox(width: 4.5.h),
                    Image.asset("assets/logos/insta_light.png", height: 2.5.h),
                    SizedBox(width: 4.5.h),
                    Image.asset("assets/logos/twi_light.png", height: 2.5.h)
                  ]),
                  SizedBox(height: 4.5.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CircleAvatar(
                        radius: 2.h,
                        backgroundColor: Color(0xffD9D9D9),
                        child: Center(
                            child: Icon(Icons.arrow_back,
                                color: Colors.black, size: 2.5.h))),
                    SizedBox(width: 5.w),
                    CircleAvatar(
                        radius: 3.h,
                        backgroundColor: Color(0xffFFFFFF),
                        child: Center(
                            child: Icon(Icons.close,
                                color: Color(0xffD19A33), size: 4.h))),
                    SizedBox(width: 5.w),
                    CircleAvatar(
                        radius: 3.h,
                        backgroundColor: Color(0xffD19A33),
                        child: Center(
                            child: Icon(Icons.check,
                                color: Color(0xffffffff), size: 4.h))),
                    SizedBox(width: 5.w),
                    CircleAvatar(
                        radius: 2.h,
                        backgroundColor: Color(0xffD9D9D9),
                        child: Center(
                            child: Icon(Icons.bookmark_outline,
                                color: Color(0xffD19A33), size: 2.8.h)))
                  ]),
                  SizedBox(height: 9.h),
                  Expanded(
                      child: Container(
                          height: 8.h,
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/icons/icon_home.png",
                                        height: 3.h),
                                    Image.asset("assets/icons/icon_feeds.png",
                                        height: 2.h),
                                    Image.asset("assets/icons/icon_chat.png",
                                        height: 2.5.h),
                                    Image.asset("assets/icons/icon_bell.png",
                                        height: 2.5.h),
                                    Image.asset("assets/icons/icon_person.png",
                                        height: 2.5.h)
                                  ]))))
                ]))));
  }
}
