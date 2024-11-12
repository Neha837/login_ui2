import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Task07/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task07A extends StatefulWidget {
  const Task07A({super.key});

  @override
  State<Task07A> createState() => _Task07AState();
}

class _Task07AState extends State<Task07A> {
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
              textwidget2("Choose your plan",
                  fontWeight: FontWeight.bold, fontsize: 18.5.sp)
            ])),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 3.5.h, right: 3.5.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Expanded(
                            child: textwidget2(
                                "Thank you for registering as an establishment. Please choose your plan.",
                                color: Color(0xff797979),
                                fontsize: 16.sp))
                      ]),
                      SizedBox(height: 2.h),
                      chooseplanwidget(
                          "Free Monthly plan",
                          Color(0xff5571FC),
                          "Add a detailed and searchable profile of your restaurant,bar, club or venue. Post up to 8 'bites' of 180 character news items a month, including a photo or video. 'Bites' appear in feeds of all nearby users.",
                          Color(0xff797979),
                          Color(0xff868686),
                          isArrow: true),
                      SizedBox(height: 2.h),
                      chooseplanwidget(
                          "Gold plan",
                          Color(0xffE3BA22),
                          "For those establishments that want more. All of the above plus unlimited posting 'bites'. Gold Plan establishments will also be given first priority for any limited offers or services from our partners.",
                          Color(0xff797979),
                          Color(0xffE3BA22),
                          pricepertax: "\$5.99 / month",
                          isArrow: true),
                      SizedBox(height: 2.h),
                      InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext) {
                                  return Dialog(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26)),
                                      child: SizedBox(
                                          width: 65.w,
                                          child: Padding(
                                              padding: EdgeInsets.all(18.0),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 2.h),
                                                    textwidget2(
                                                        "Boost the Bite for \$1.00",
                                                        fontsize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    SizedBox(height: 2.h),
                                                    Center(
                                                        child: textwidget2(
                                                            "For only \$1 your news bite will be boosted to within the top 5 positions in local user feeds for three days",
                                                            textAlign: TextAlign
                                                                .center)),
                                                    SizedBox(height: 2.h),
                                                    Row(children: [
                                                      Expanded(
                                                          child: Container(
                                                              height: 5.h,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  border: Border.all(
                                                                      color: Color(
                                                                          0xff002065),
                                                                      width:
                                                                          1)),
                                                              child: Center(
                                                                child: textwidget2(
                                                                    "No",
                                                                    color: Color(
                                                                        0xff002065),
                                                                    fontsize:
                                                                        15.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ))),
                                                      SizedBox(width: 2.w),
                                                      Expanded(
                                                          child: Container(
                                                              height: 5.h,
                                                              decoration: BoxDecoration(
                                                                  color: Color(
                                                                      0xff002065),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          8)),
                                                              child: Center(
                                                                  child: textwidget2(
                                                                      "Yes",
                                                                      color: Colors
                                                                          .white,
                                                                      fontsize:
                                                                          15.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600))))
                                                    ])
                                                  ]))));
                                });
                          },
                          child: chooseplanwidget(
                              "Promotional bites",
                              Color(0xff3E3E3E),
                              "For only \$1 your news 'bite' will be boosted to within the top 5 positions in local user feeds, for 3 days. You will be prompted to boost when posting 'bites'.",
                              Colors.black,
                              Colors.black,
                              pricepertax: "\$1 / bite"))
                    ]))));
  }
}
