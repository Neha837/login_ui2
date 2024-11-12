import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task03/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task03B extends StatefulWidget {
  Task03B({super.key});

  @override
  State<Task03B> createState() => _PageState();
}

class _PageState extends State<Task03B> {
  List items = [
    "assets/images/gallery14.png",
    "assets/images/gallery1.png",
    "assets/images/gallery2.png",
    "assets/images/gallery3.png",
    "assets/images/gallery4.png",
    "assets/images/gallery5.png",
    "assets/images/gallery6.png",
    "assets/images/gallery7.png",
    "assets/images/gallery8.png",
    "assets/images/gallery9.png",
    "assets/images/gallery15.png",
    "assets/images/gallery10.png",
    "assets/images/gallery11.png",
    "assets/images/gallery12.png",
    "assets/images/gallery16.png",
    "assets/images/gallery14.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1F2126),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff1B1B21),
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                    margin: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: Color(0xff292B31),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.arrow_back_ios_new_rounded,
                        color: Colors.white, size: 4.w))),
            centerTitle: true,
            title: Image.asset("assets/icons/vector.png", height: 6.h),
            actions: [
              Icon(Icons.error, color: Color(0xffFFFFFF), size: 5.5.w),
              SizedBox(width: 3.w)
            ]),
        body: SafeArea(
            child: Column(children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff31D8E3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.2.h),
                      child: Column(children: [
                        customtextwithpoppins("Yusuf Aziz", fontsize: 18.sp),
                        SizedBox(height: 2.2.h),
                        Expanded(
                            child: Container(
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff2C2E34),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Column(children: [
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 16,
                                              left: 12,
                                              right: 12,
                                              bottom: 0),
                                          child: ListView(children: [
                                            chattingwidget(
                                                message:
                                                    "Hi, mate! How are you doing?",
                                                isMe: false),
                                            chattingwidget(
                                                message:
                                                    "I'm great! And you? Do you still live\nin Riyadh?",
                                                isMe: true),
                                            chattingwidget(
                                                isMe: false,
                                                message:
                                                    "I'm doing great as well, brother!"),
                                            chattingwidget(
                                                isMe: false,
                                                message:
                                                    "Yeah I do. It's great to live in here. You have to come over next time"),
                                            chattingwidget(
                                                isMe: true,
                                                message: "That's great!"),
                                            chattingwidget(
                                                image: "rectangle.png",
                                                isMe: false),
                                            chattingwidget(
                                                message:
                                                    "I'll definetly come to your house soon!",
                                                isMe: true)
                                          ]))),
                                  Container(
                                      width: 100.w,
                                      padding: EdgeInsets.only(
                                          left: 1.h,
                                          right: 1.h,
                                          top: 1.h,
                                          bottom: 2.5.h),
                                      decoration: BoxDecoration(
                                          color: Color(0xff1F2126),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          )),
                                      child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(children: [
                                            InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (_) {
                                                        return Container(
                                                            height: 60.h,
                                                            width: 100.w,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xff383B42),
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            30),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            30))),
                                                            child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          1.h),
                                                                  Container(
                                                                    height:
                                                                        .5.h,
                                                                    width: 9.w,
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xff1F2126),
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(5))),
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          3.h),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                            Icons
                                                                                .camera_enhance,
                                                                            color:
                                                                                Colors.white,
                                                                            size: 5.w),
                                                                        SizedBox(
                                                                            width:
                                                                                .5.w),
                                                                        customtextwithpoppins(
                                                                            "Add photo",
                                                                            fontsize:
                                                                                16.sp)
                                                                      ]),
                                                                  SizedBox(
                                                                      height:
                                                                          3.h),
                                                                  Expanded(
                                                                      child: Padding(
                                                                          padding: EdgeInsets.all(25),
                                                                          child: GridView.count(
                                                                              crossAxisCount: 4,
                                                                              crossAxisSpacing: 0.0,
                                                                              mainAxisSpacing: 0.0,
                                                                              shrinkWrap: true,
                                                                              children: List.generate(items.length, (index) {
                                                                                return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items[index]), fit: BoxFit.cover), borderRadius: BorderRadius.only(topLeft: Radius.circular(index == 0 ? 25 : 0), topRight: Radius.circular(index == 3 ? 25 : 0), bottomLeft: Radius.circular(index == 12 ? 25 : 0), bottomRight: Radius.circular(index == 15 ? 25 : 0))));
                                                                              })))),
                                                                  SizedBox(
                                                                      height:
                                                                          3.h),
                                                                ]));
                                                      });
                                                },
                                                child: Icon(
                                                    Icons.camera_enhance,
                                                    color: Color(0xff898989),
                                                    size: 30)),
                                            SizedBox(width: .5.h),
                                            Expanded(
                                                child: TextField(
                                                    autocorrect: false,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFFFFFF)),
                                                    decoration: InputDecoration(
                                                        constraints:
                                                            BoxConstraints(
                                                                maxHeight: 6.h),
                                                        filled: true,
                                                        fillColor:
                                                            Color(0xff292B31),
                                                        hintText:
                                                            "Type your message...",
                                                        hintStyle:
                                                            GoogleFonts.poppins(
                                                                color: Color(
                                                                    0xff8F8F8F),
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    12),
                                                            borderSide: BorderSide
                                                                .none),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(12)),
                                                        contentPadding: EdgeInsets.all(2.h)))),
                                            SizedBox(width: .5.h),
                                            Icon(Icons.send,
                                                size: 30,
                                                color: Color(0xff31D8E3))
                                          ])))
                                ])))
                      ]))))
        ])));
  }
}
