import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task03/chatscreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class msgscreen extends StatefulWidget {
  const msgscreen({super.key});

  @override
  State<msgscreen> createState() => _PageState();
}

class _PageState extends State<msgscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F2126),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 4.h,
                      width: 4.h,
                      decoration: BoxDecoration(
                          color: Color(0xff292B31),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Image.asset(
                      "assets/icons/vector.png",
                      height: 6.h,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 4.h,
                    width: 4.h,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.transparent,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff31D8E3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.only(top: 2.2.h),
                  child: Column(
                    children: [
                      Text(
                        "New Massages",
                        style: GoogleFonts.poppins(
                            color: Color(0xffFFFFFF),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 3.h, left: 3.h, right: 3.h),
                                child: TextField(
                                  style: TextStyle(color: Color(0xffFFFFFF)),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xff292B31),
                                      hintText: "Search here",
                                      hintStyle: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      prefixIcon: Icon(Icons.search,
                                          size: 25, color: Color(0xff8F8F8F)),
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 15)),
                                ),
                              ),
                              SizedBox(height: .5.h),
                              Expanded(
                                child: ListView(
                                  children: [
                                    ListTile(
                                      title: InkWell(
                                        onTap: () {
                                          Get.to(chatscreen());
                                        },
                                        child: Text(
                                          "Yusuf Aziz",
                                          style: GoogleFonts.poppins(
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@yusufaziz",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading: Image.asset(
                                        "assets/images/pic1.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Azhar Cemal",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@azmalcemal",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading: Image.asset(
                                        "assets/images/pic2.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Damiam Asim",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@damiamasim",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading: Image.asset(
                                        "assets/images/pic3.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Khalid Jiri",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@khalidjiri",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading: Image.asset(
                                        "assets/images/pic4.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Ayda Amal",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@aydaamal",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading: Image.asset(
                                        "assets/images/pic5.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Calista Celina",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "@calistacelina",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff8F8F8F),
                                        ),
                                      ),
                                      leading:
                                          Image.asset("assets/images/pic6.png"),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Hassan Erol",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      subtitle: Text(
                                        "@hassanerol",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff8F8F8F)),
                                      ),
                                      leading:
                                          Image.asset("assets/images/pic7.png"),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text("Mira Kelia",
                                          style: GoogleFonts.poppins(
                                              color: Color(0xffFFFFFF))),
                                      subtitle: Text("@mirakelia",
                                          style: GoogleFonts.poppins(
                                              color: Color(0xff8F8F8F))),
                                      leading: Image.asset(
                                        "assets/images/pic8.png",
                                      ),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Latif Haider",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      subtitle: Text(
                                        "@latifhaider",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff8F8F8F)),
                                      ),
                                      leading:
                                          Image.asset("assets/images/pic9.png"),
                                      dense: true,
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Asia Basma",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      subtitle: Text(
                                        "@asiabasma",
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff8F8F8F)),
                                      ),
                                      leading: Image.asset(
                                          "assets/images/pic10.png"),
                                      dense: true,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
