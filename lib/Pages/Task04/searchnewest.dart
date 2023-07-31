import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class searchnewest extends StatefulWidget {
  const searchnewest({super.key});

  @override
  State<searchnewest> createState() => _searchnewestState();
}

class _searchnewestState extends State<searchnewest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Search-Newest.png"),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: EdgeInsets.only(top: 5.h, left: 4.h, right: 4.h),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "New Search",
                    style: GoogleFonts.poppins(
                        color: Color(0xffFFFFFF),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Image.asset("assets/icons/vector1.png")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
