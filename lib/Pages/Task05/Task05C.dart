import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task05/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task05C extends StatefulWidget {
  const Task05C({super.key});

  @override
  State<Task05C> createState() => _Task05CState();
}

class _Task05CState extends State<Task05C> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD7D6D6),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffD7D6D6),
            leading: Icon(Icons.arrow_back, size: 24, color: Colors.black),
            title: Row(children: [
              Spacer(),
              textwidget("Edit profile",
                  fontsize: 19.5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)
            ])),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h, right: 6.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 7.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff002065), width: 1.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: textwidget("Select Type",
                                fontsize: 17.sp, fontWeight: FontWeight.bold))),
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
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("From",
                                        color: Colors.black, fontsize: 15.sp)
                                  ]))),
                          Container(
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("To",
                                        color: Colors.black, fontsize: 15.sp)
                                  ])))
                        ]),
                    SizedBox(height: 1.h),
                    textwidget("Tuesday",
                        fontsize: 15.5.sp, fontWeight: FontWeight.bold),
                    SizedBox(height: .5.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("From",
                                        color: Colors.black, fontsize: 15.sp)
                                  ]))),
                          Container(
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("To",
                                        color: Colors.black, fontsize: 15.sp)
                                  ])))
                        ]),
                    SizedBox(height: 1.h),
                    textwidget("Wednesday",
                        fontsize: 15.5.sp, fontWeight: FontWeight.bold),
                    SizedBox(height: .5.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("From",
                                        color: Colors.black, fontsize: 15.sp)
                                  ]))),
                          Container(
                              height: 5.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Row(children: [
                                    textwidget("To",
                                        color: Colors.black, fontsize: 15.sp)
                                  ])))
                        ])
                  ])),
          SingleChildScrollView(
              child: DefaultTabController(
                  length: 3,
                  child: Container(
                      width: 100.w,
                      height: 51.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 3.5.h, right: 3.5.h, top: 4.h),
                            child: Row(children: [
                              Icon(Icons.arrow_back, size: 23),
                              Spacer(),
                              textwidget("Select types",
                                  fontsize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)
                            ])),
                        TabBar(
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            indicatorColor: Color(0xff002065),
                            indicatorWeight: 2.5,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Color(0xff002065),
                            unselectedLabelColor: Color(0xff2B2B2B),
                            labelStyle: GoogleFonts.montserrat(
                                fontSize: 15.sp, fontWeight: FontWeight.w700),
                            unselectedLabelStyle: GoogleFonts.montserrat(
                                fontSize: 15.sp, fontWeight: FontWeight.w600),
                            tabs: [
                              Tab(text: "Region"),
                              Tab(text: "Food Type"),
                              Tab(text: "Restaurant type")
                            ]),
                        Expanded(
                            child: TabBarView(children: [
                          Padding(
                              padding: EdgeInsets.only(left: 4.h, right: 4.h),
                              child: ListView(children: [
                                regionwidget("Central & South American"),
                                SizedBox(height: 1.h),
                                regiwidget("Carribean"),
                                SizedBox(height: 1.h),
                                regionwidget("European"),
                                SizedBox(height: 1.h),
                                regiwidget("Pacific"),
                                SizedBox(height: 1.h),
                                regiwidget("Pacific"),
                                SizedBox(height: 1.h),
                                regiwidget("Africa"),
                                SizedBox(height: 8.h)
                              ]))
                        ]))
                      ]))))
        ])));
  }
}
