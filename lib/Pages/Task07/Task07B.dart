import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task07/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task07B extends StatefulWidget {
  Task07B({super.key});

  @override
  State<Task07B> createState() => _Task07BState();
}

class _Task07BState extends State<Task07B> {
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
        body: ListView(children: [
          Padding(
              padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h),
              child: Column(children: [
                Stack(children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(20),
                  //   child: Image.asset("assets/images/pavalion.png"),
                  // ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 1.h, right: 1.h, bottom: 8.h),
                      child: Image.asset("assets/images/pavalion.png")),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 2.h,
                                        left: .5.h,
                                        right: 1.h,
                                        bottom: .5.h),
                                    child: Row(children: [
                                      Icon(Icons.phone_in_talk,
                                          color: Color(0xff5571FC), size: 20),
                                      SizedBox(width: 3.h),
                                      Icon(Icons.mail,
                                          color: Color(0xff5571FC), size: 20),
                                      SizedBox(width: 3.h),
                                      Icon(Icons.share,
                                          color: Color(0xff5571FC), size: 20),
                                      Spacer(),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                height: 4.5.h,
                                                width: 24.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff5571FC),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h, right: 1.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .person_add_alt,
                                                              size: 19,
                                                              color:
                                                                  Colors.white),
                                                          textwidget2("Follow",
                                                              color:
                                                                  Colors.white,
                                                              fontsize: 15.5.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)
                                                        ]))),
                                            textwidget2(" @username",
                                                color: Color(0xff5571FC))
                                          ])
                                    ]))
                              ]))),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CircleAvatar(
                              radius: 6.h,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 5.6.h,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage("assets/images/Image-60.png"),
                              ))))
                ]),
                SizedBox(height: 1.5.w),
                Row(children: [
                  containerwidget("Spicy"),
                  SizedBox(width: 1.w),
                  containerwidget("Fine Dining"),
                  SizedBox(width: 1.w),
                  containerwidget("Far Eastern")
                ]),
                SizedBox(height: 2.w),
                textwidget2(
                    "The Chinese Pavilion is an elegant 50 seat Chinese Restaurant with a reputation for excellent, traditional Mandarin cuisine. Popular with Chinese and Londoners alike, booking is essential. Online bookings at web link,call or message below.",
                    fontsize: 15.sp,
                    textAlign: TextAlign.justify),
                SizedBox(height: 1.5.w),
                textwidget2(
                    "Favourites include Dimsum Soup, Choy Mein and Sweet and Sour Chicken. We deliver through Grub Hub during opening hours. Catering services are available for groups above 24 persons.",
                    fontsize: 15.sp,
                    textAlign: TextAlign.justify),
                SizedBox(height: 1.5.h),
                Container(
                    height: 6.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xffE6E6E6),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.5.h, vertical: 1.h),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 18),
                              SizedBox(width: 1.w),
                              Expanded(
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "1223 Forest Road, Shoreditch Building, London. SW17DE, ",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 13.5.sp,
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "United Kingdom",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 13.5.sp,
                                                fontWeight: FontWeight.bold))
                                      ])))
                            ]))),
                SizedBox(height: 2.w),
                Row(children: [
                  textwidget2("Days",
                      fontWeight: FontWeight.bold, fontsize: 14.sp),
                  Spacer(),
                  textwidget2("Time",
                      fontWeight: FontWeight.bold, fontsize: 14.sp),
                ]),
                SizedBox(height: 2.w),
                SizedBox(
                    height: 15.h,
                    child: ListView(children: [
                      Row(children: [
                        containerwidget("Tue"),
                        Spacer(),
                        containerwidget("11am - 4pm")
                      ]),
                      SizedBox(height: 1.w),
                      Row(children: [
                        containerwidget("Wed"),
                        Spacer(),
                        containerwidget("11am - 4pm")
                      ]),
                      SizedBox(height: 1.h),
                      Row(children: [
                        containerwidget("Thu"),
                        Spacer(),
                        containerwidget("11am - 4pm")
                      ]),
                      SizedBox(height: 1.w),
                      Row(children: [
                        containerwidget("Fri"),
                        Spacer(),
                        containerwidget("11am - 4pm")
                      ])
                    ])),
                SizedBox(height: 2.h),
                Row(children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Closed: ",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Chinese New Year",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w500))
                  ]))
                ]),
                SizedBox(height: .5.h),
                Row(children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Website: ",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "www.chinesepavalion.com",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w500))
                  ])),
                  Spacer(),
                  Image.asset("assets/logos/fb_logo.png", height: 2.5.h),
                  SizedBox(width: .5.h),
                  Image.asset("assets/logos/insta_logo.png", height: 2.5.h)
                ]),
                SizedBox(height: 2.h),
                Row(children: [
                  textwidget2("Images",
                      fontWeight: FontWeight.bold, fontsize: 16.sp)
                ]),
                SizedBox(height: 1.h),
                Container(
                    height: 18.h,
                    width: 100.w,
                    child: Row(children: [
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(18)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                      "assets/images/image 11.png",
                                      fit: BoxFit.cover)))),
                      SizedBox(width: .3.h),
                      Column(children: [
                        Expanded(
                            child: Container(
                                width: 28.5.w,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        "assets/images/image 12.png",
                                        fit: BoxFit.cover)))),
                        SizedBox(height: .3.h),
                        Expanded(
                            child: Container(
                                width: 28.5.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                        "assets/images/image 14.png",
                                        fit: BoxFit.cover))))
                      ]),
                      SizedBox(width: .3.h),
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                      "assets/images/image 13.png",
                                      fit: BoxFit.cover))))
                    ])),
                SizedBox(height: 2.h),
                Row(children: [
                  textwidget2("Recent Posts",
                      fontWeight: FontWeight.bold, fontsize: 16.sp)
                ]),
                SizedBox(height: 1.h),
                SizedBox(
                    height: 70.h,
                    child: ListView(children: [
                      containerbox(
                          "image 15.png",
                          "Casa Tequila Restaurant",
                          "24 nov 03:32",
                          "We're open for bookings for christmas eve, 24th december. Set menu includes turkey, ham and pudding.From \$250 per head. Menu at",
                          "food.png"),
                      SizedBox(height: 1.h),
                      Image.asset("assets/images/image 16.png"),
                      SizedBox(height: 1.h),
                      containerbox(
                          "image 17.png",
                          "The Palace Nightclub",
                          "24 nov 03:32",
                          "Ra welcomes chef itsuko suzuki to our team. Still some tables free this weekend, if you book soon, sushi, bowls, saki. Browse the menu",
                          "burger.png")
                    ]))
              ]))
        ]));
  }
}
