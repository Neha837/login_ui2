import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task09/moreinfoscreen.dart';
import 'package:login_ui/Pages/Task09/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class infoscreen extends StatefulWidget {
  const infoscreen({super.key});

  @override
  State<infoscreen> createState() => _infoscreenState();
}

class _infoscreenState extends State<infoscreen> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: 30.h,
          child: Padding(
              padding: EdgeInsets.only(top: 13.h, bottom: 8.h),
              child: Image.asset("assets/logos/gabu_logo.png"))),
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffDA3AB4).withOpacity(0.25),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffDA3AB4).withOpacity(0.45),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          child: Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Container(
                                      constraints: BoxConstraints.expand(),
                                      decoration: BoxDecoration(
                                          color: Color(0xffDA3AB4),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(35),
                                              topRight: Radius.circular(35))),
                                      child: SingleChildScrollView(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5.5.h,
                                                  top: 8.h,
                                                  right: 5.5.h,
                                                  bottom: 3.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Center(
                                                        child:
                                                            textwidgetmontserrat(
                                                                "Information",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontsize:
                                                                    20.sp)),
                                                    textwidgetmontserrat(
                                                        "Add info here"),
                                                    SizedBox(height: 4.h),
                                                    Center(
                                                        child: Stack(children: [
                                                      CircleAvatar(
                                                          radius: 9.h,
                                                          backgroundColor:
                                                              Colors.white),
                                                      Positioned(
                                                          right: 5,
                                                          top: 12.h,
                                                          child: Image.asset(
                                                              "assets/icons/camera.png",
                                                              height: 4.5.h))
                                                    ])),
                                                    SizedBox(height: 5.h),
                                                    customtextfield(
                                                        "Enter Your Name",
                                                        _name,
                                                        Icons.person),
                                                    SizedBox(height: 6.h),
                                                    InkWell(
                                                        onTap: () {
                                                          Get.to(
                                                              moreinfoscreen());
                                                        },
                                                        child: Center(
                                                            child:
                                                                custombuttonnext(
                                                                    "next")))
                                                  ])))))))))))
    ]));
  }
}
