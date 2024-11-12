import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task05/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task05D extends StatefulWidget {
  const Task05D({super.key});

  @override
  State<Task05D> createState() => _Task05DState();
}

class _Task05DState extends State<Task05D> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Color(0xffFFFFFF),
            body: Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.5.h, right: 3.5.h, top: 4.h),
                  child: Row(children: [
                    Icon(Icons.arrow_back, size: 23),
                    Spacer(),
                    textwidget("Select types",
                        fontsize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)
                  ])),
              TabBar(
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
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
            ])));
  }
}
