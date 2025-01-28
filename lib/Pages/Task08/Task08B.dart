import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task08/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task08B extends StatefulWidget {
  const Task08B({super.key});

  @override
  State<Task08B> createState() => _Task08BState();
}

class _Task08BState extends State<Task08B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Row(children: [
                        Image.asset("assets/logos/hospo.png",
                            height: 3.h, color: Colors.transparent),
                        Spacer(),
                        Image.asset("assets/logos/hospo.png", height: 3.8.h),
                        Spacer(),
                        textwithopensans("Munich",
                            fontWeight: FontWeight.w700, fontsize: 14.5.sp),
                        SizedBox(width: .5.h),
                        Icon(Icons.location_on_outlined, size: 2.h)
                      ])),
                  SizedBox(height: 1.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Image.asset(
                                      "assets/icons/search_icon.png",
                                      height: 1.h)),
                              hintText: "Search",
                              hintStyle: GoogleFonts.barlow(
                                  color: Color(0xffD0D0D0), fontSize: 16.sp),
                              suffixIcon: Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Image.asset(
                                      "assets/icons/sufixicon.png",
                                      height: 1.h)),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0)))))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 2.8.h, right: 2.8.h, top: 3.h),
                      child: Row(children: [
                        textwithopensans("Explore",
                            fontsize: 17.sp, fontWeight: FontWeight.w700),
                        Spacer(),
                        textwithopensans("Show all", fontsize: 14.5.sp),
                        SizedBox(width: 1.5.w),
                        Icon(Icons.arrow_forward_ios,
                            size: 2.h, color: Color(0xff240707))
                      ])),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.8.h, top: .5.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                cutomexplorewidget("jose.png", "Jose & Rides",
                                    "Sat-Sun", "50% off whole bill"),
                                SizedBox(width: .5.w),
                                cutomexplorewidget("orteo.png", "Orteo Foods",
                                    "Mon-Fri", "40% off on each deal"),
                                SizedBox(width: .5.w),
                                cutomexplorewidget("mangla.png", "Jose & Rides",
                                    "Mon-Fri", "30% off on all rides")
                              ]))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 2.8.h, right: 2.8.h, top: 3.h),
                      child: Row(children: [
                        textwithopensans("Last Seen",
                            fontsize: 17.sp, fontWeight: FontWeight.w700),
                        Spacer(),
                        textwithopensans("Show all", fontsize: 14.5.sp),
                        SizedBox(width: 1.5.w),
                        Icon(Icons.arrow_forward_ios,
                            size: 2.h, color: Color(0xff240707))
                      ])),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.8.h, top: .5.h),
                          child: Row(children: [
                            customlastseenwidget("tea.png", "Medlin High Tea",
                                "Tue-Wed", "60% off food"),
                            SizedBox(width: 3.w),
                            customlastseenwidget("ride.png", "Jose & Rides",
                                "Mon-Fri", "40% off on all food")
                          ]))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 2.8.h, right: 2.8.h, top: 3.h),
                      child: Row(children: [
                        textwithopensans("Favourites",
                            fontsize: 17.sp, fontWeight: FontWeight.w700),
                        Spacer(),
                        textwithopensans("Show all", fontsize: 14.5.sp),
                        SizedBox(width: 1.5.w),
                        Icon(Icons.arrow_forward_ios,
                            size: 2.h, color: Color(0xff240707))
                      ])),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.8.h, top: .5.h),
                          child: Row(children: [
                            customlastseenwidget("jose2.png", "Jose & Rides",
                                "Sat-Sun", "50% off on all rides"),
                            SizedBox(width: 3.w),
                            customlastseenwidget("jose3.png", "Jose & Rides",
                                "Sat-Sun", "30% off on all food")
                          ])))
                ]))),
        bottomNavigationBar: Container(
            height: 8.h,
            decoration: BoxDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/home.png", height: 3.5.h),
                  Image.asset("assets/icons/location.png", height: 3.8.h),
                  Image.asset("assets/icons/person.png", height: 3.5.h)
                ])));
  }
}
