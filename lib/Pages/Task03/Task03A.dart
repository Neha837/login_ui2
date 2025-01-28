import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task03/Task03B.dart';
import 'package:login_ui/Pages/Task03/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Task03A extends StatefulWidget {
  const Task03A({super.key});

  @override
  State<Task03A> createState() => _PageState();
}

class _PageState extends State<Task03A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1B1B21),
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
            title: Image.asset("assets/icons/vector.png", height: 6.h)),
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
                        customtextwithpoppins("New Massages", fontsize: 18.sp),
                        SizedBox(height: 2.2.h),
                        Expanded(
                            child: Container(
                                width: 100.w,
                                padding: EdgeInsets.only(top: 12),
                                decoration: BoxDecoration(
                                    color: Color(0xff1F2126),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 3.h, left: 3.h, right: 3.h),
                                          child: TextField(
                                              autocorrect: false,
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF)),
                                              decoration: InputDecoration(
                                                  constraints: BoxConstraints(
                                                      maxHeight: 6.h),
                                                  filled: true,
                                                  fillColor: Color(0xff292B31),
                                                  hintText: "Search here",
                                                  hintStyle: GoogleFonts.poppins(
                                                      color: Color(0xff8F8F8F),
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(
                                                          12),
                                                      borderSide:
                                                          BorderSide.none),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                      borderRadius: BorderRadius.circular(
                                                          12)),
                                                  prefixIcon: Icon(Icons.search,
                                                      size: 20,
                                                      color: Color(0xff8F8F8F)),
                                                  contentPadding: EdgeInsets.symmetric(vertical: 15)))),
                                      SizedBox(height: .5.h),
                                      Expanded(
                                          child: ListView(children: [
                                        InkWell(
                                            onTap: () {
                                              Get.to(Task03B());
                                            },
                                            child: listtile("Yusuf Aziz",
                                                "@yusufaziz", "pic1.png")),
                                        listtile("Azhar Cemal", "@azharcemal",
                                            "pic2.png"),
                                        listtile("Damiam Asim", "@damiamasim",
                                            "pic3.png"),
                                        listtile("Khalid Jiri", "@khalidjiri",
                                            "pic4.png"),
                                        listtile("Ayda Amal", "@aydaamal",
                                            "pic5.png"),
                                        listtile("Calista Celina",
                                            "@calistacelina", "pic6.png"),
                                        listtile("Hassan Erol", "@hassanerol",
                                            "pic7.png"),
                                        listtile("Mira Kelia", "@mirakelia",
                                            "pic8.png"),
                                        listtile("Latif Haider", "@latifhaider",
                                            "pic9.png"),
                                        listtile("Asia Basma", "@asiabasma",
                                            "pic10.png"),
                                      ]))
                                    ])))
                      ]))))
        ])));
  }
}
