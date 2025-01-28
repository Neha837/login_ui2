import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:login_ui/Pages/Task05/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task05A extends StatefulWidget {
  const Task05A({super.key});

  @override
  State<Task05A> createState() => _Task05AState();
}

class _Task05AState extends State<Task05A> {
  bool isSwitched = false;
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;

  TextEditingController _street = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _country = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, size: 24, color: Colors.black),
            title: Row(children: [
              Spacer(),
              textwidget("Settings",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 20.sp)
            ])),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    EdgeInsets.only(left: 3.5.h, right: 3.5.h, bottom: 3.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          // width: 100.w,
                          // height: 70.h,
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Location",
                                        fontsize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    Row(children: [
                                      textwidget("Use phone location",
                                          fontsize: 15.5.sp,
                                          fontWeight: FontWeight.bold),
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
                                    ]),
                                    textwidget("Set location manually",
                                        fontsize: 15.5.sp,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 2.h),
                                    field(_street, "Street"),
                                    SizedBox(height: .8.h),
                                    field(_city, 'City'),
                                    SizedBox(height: .8.h),
                                    field(_state, 'State/Province'),
                                    SizedBox(height: .8.h),
                                    field(_country, 'Country'),
                                    SizedBox(height: 2.h),
                                    primarybutton("Submit", () {},
                                        color: Color(0xff002065)),
                                    SizedBox(height: 1.h),
                                    primarybutton("Reset", () {},
                                        textColor: Color(0xff002065),
                                        borderColor: Color(0xff002065))
                                  ]))),
                      SizedBox(height: 4.h),
                      textwidget("Search radius",
                          fontsize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      SizedBox(height: 3.5.h),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: .5.h,
                                width: 100.w,
                                decoration:
                                    BoxDecoration(color: Color(0xffE4B922))),
                            SizedBox(height: 1.h),
                            textwidget("56 km / 43 miles",
                                fontWeight: FontWeight.w500),
                            textwidget("Radius", fontWeight: FontWeight.bold)
                          ]),
                      SizedBox(height: 2.5.h),
                      Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Notifications",
                                        fontsize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                    rowwithswitch(
                                        "Establishments you follow", switch1),
                                    rowwithswitch(
                                        "This week! (Tuesday)", switch2),
                                    rowwithswitch(
                                        "This weekend! (Friday)", switch3),
                                    rowwithswitch("Company messages", switch4),
                                  ]))),
                      SizedBox(height: 5.h),
                      textwidget("Account",
                          color: Colors.black,
                          fontsize: 18.sp,
                          fontWeight: FontWeight.bold),
                      SizedBox(height: 2.h),
                      Center(
                          child: Stack(children: [
                        Image.asset("assets/images/Image-60.png", height: 20.h),
                        Positioned(
                            top: 11.h,
                            right: 0,
                            child: CircleAvatar(
                                radius: 2.h,
                                backgroundColor: Color(0xffD9D9D9),
                                child: Icon(Icons.edit_rounded,
                                    color: Colors.black, size: 2.5.h)))
                      ])),
                      SizedBox(height: 2.h),
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(2.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    iconwithtext(
                                        Icons.person_2_outlined, "Name"),
                                    iconwithtext(
                                        Icons.email_outlined, "Username"),
                                    SizedBox(height: 1.h),
                                    textwidget(
                                        "Name and username are not editable!",
                                        fontsize: 15.sp,
                                        fontWeight: FontWeight.w600),
                                    iconwithtext(
                                        Icons.lock_outline, "Passwaord"),
                                    SizedBox(height: 1.h),
                                    Center(
                                        child: Container(
                                            height: 6.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff002065),
                                                    width: 1.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Center(
                                                child: textwidget(
                                                    "Change Password",
                                                    fontsize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.bold))))
                                  ]))),

                      // Container(
                      //   // height: 33.h,
                      //   // width: 100.w,
                      //   decoration: BoxDecoration(
                      //       color: Color(0xffEAECFF),
                      //       borderRadius: BorderRadius.all(Radius.circular(20))),
                      //   child: Padding(
                      //     padding: EdgeInsets.all(3.h),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Row(
                      //           children: [
                      //             Icon(
                      //               Icons.person_2_outlined,
                      //               color: Color(0xff002065),
                      //               size: 22,
                      //             ),
                      //             SizedBox(width: 1.w),
                      //             Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 textwidget(
                      //                   "Name",
                      //                   fontsize: 15.sp,
                      //                   fontWeight: FontWeight.bold,
                      //                 ),
                      //                 textwidget(
                      //                   "Name",
                      //                   color: Colors.transparent,
                      //                   fontsize: 15.sp,
                      //                   fontWeight: FontWeight.bold,
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //         SizedBox(height: 1.h),
                      //         Row(
                      //           children: [
                      //             Icon(
                      //               Icons.email_outlined,
                      //               color: Color(0xff002065),
                      //               size: 20,
                      //             ),
                      //             SizedBox(width: 1.w),
                      //             Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 textwidget("Username",
                      //                     fontsize: 15.sp, fontWeight: FontWeight.bold),
                      //                 textwidget("Username",
                      //                     fontsize: 15.sp,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.transparent)
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //         SizedBox(height: 1.5.h),
                      //         textwidget(
                      //           "Name and username are not editable!",
                      //           fontsize: 15.sp,
                      //           fontWeight: FontWeight.w600,
                      //         ),
                      //         SizedBox(height: 2.h),
                      //         Row(
                      //           children: [
                      //             Icon(
                      //               Icons.lock_outline,
                      //               color: Color(0xff002065),
                      //               size: 20,
                      //             ),
                      //             SizedBox(width: 1.w),
                      //             Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               children: [
                      //                 textwidget("Password",
                      //                     fontsize: 15.sp, fontWeight: FontWeight.bold),
                      //                 textwidget(
                      //                   "(hidden)",
                      //                   color: Colors.black,
                      //                   fontsize: 15.sp,
                      //                   fontWeight: FontWeight.w600,
                      //                 )
                      //               ],
                      //             )
                      //           ],
                      //         ),
                      //         SizedBox(height: 1.h),
                      //         Center(
                      //           child: Container(
                      //             height: 6.h,
                      //             width: 40.w,
                      //             decoration: BoxDecoration(
                      //                 border: Border.all(
                      //                     color: Color(0xff002065), width: 1.5),
                      //                 borderRadius:
                      //                     BorderRadius.all(Radius.circular(20))),
                      //             child: Center(
                      //                 child: textwidget("Change Password",
                      //                     fontsize: 15.sp,
                      //                     fontWeight: FontWeight.bold)),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 2.5.h),
                      Container(
                          height: 17.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 3.h, right: 3.h, top: 2.h, bottom: 2.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Payments",
                                        fontsize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.5.h),
                                    textwidget(
                                        "Payments are handled externally.",
                                        fontsize: 15.sp,
                                        fontWeight: FontWeight.w500),
                                    SizedBox(height: 1.5.h),
                                    Row(children: [
                                      textwidget("To Order:",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                      SizedBox(width: 6.w),
                                      textwidget("Pricing",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w500)
                                    ]),
                                    SizedBox(height: 1.h),
                                    Row(children: [
                                      textwidget("To Query:",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                      SizedBox(width: 8.w),
                                      textwidget("Support",
                                          fontsize: 15.sp,
                                          fontWeight: FontWeight.w500)
                                    ])
                                  ]))),
                      SizedBox(height: 2.h),
                      Container(
                          // height: 28.h,
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
                                    textwidget("Privacy and Data",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    textwidget(
                                        "Nightly App works to comply with data and privacy laws in all jurisdictions served.link below:",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        textAlign: TextAlign.justify,
                                        fontWeight: FontWeight.w500),
                                    SizedBox(height: 1.h),
                                    textwidget("Privacy Policy",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    textwidget("Terms of Service",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(height: 1.h),
                                    textwidget("Cookies",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)
                                  ]))),
                      SizedBox(height: 3.h),
                      Container(
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Color(0xffEAECFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Behavior",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textwidget(
                                        "Bad behaviour is not tolerated on Nightly App.We reserve the right to ban users without prior notice. To report bad behaviour contact support below. Please mention the @username of the offender.",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        textAlign: TextAlign.justify),
                                    textwidget("Support",
                                        fontsize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        textDecoration:
                                            TextDecoration.underline),
                                    textwidget(
                                        "For less important instances use the follow/un-follow buttons below posts. You may also block users in the messaging inbox.",
                                        fontsize: 15.sp,
                                        textAlign: TextAlign.justify,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)
                                  ])))
                    ]))));
  }
}
