import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task09/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class foodscreen extends StatefulWidget {
  const foodscreen({super.key});

  @override
  State<foodscreen> createState() => _foodscreenState();
}

class _foodscreenState extends State<foodscreen> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 3.5.h, right: 6.w, left: 15.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Image.asset("assets/logos/gabu_logo.png", height: 5.h)
              ]),
              SizedBox(height: 2.h),
              textwidgetmontserrat("Favourite",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 21.sp),
              SizedBox(height: 2.h),
              TextField(
                  controller: _search,
                  autocorrect: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF8F8F8),
                      constraints: BoxConstraints(maxHeight: 5.5.h),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 15.sp, color: Color(0xff8C8C8C)),
                      suffixIcon: Icon(Icons.search,
                          size: 3.h, color: Color(0xff8C8C8C)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 2.5.h))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.5.h, bottom: 2.h),
                      child: ListView(children: [
                        favitems(
                            "cake.png", "Molten Lava\nCake", "99\$", "49\$"),
                        SizedBox(height: 2.5.h),
                        favitems("donuts.png", "12 Donuts", "199\$", "99\$"),
                        SizedBox(height: 2.5.h),
                        favitems("donuts.png", "Chocolate\nBrownies", "50\$",
                            "25\$"),
                        SizedBox(height: 2.5.h),
                        favitems("donuts.png", "Chilean\nSemolina\nPudding",
                            "50\$", "25\$"),
                        SizedBox(height: 2.5.h),
                        favitems(
                            "cake.png", "Molten Lava\nCake", "99\$", "49\$")
                      ])))
            ])));
  }
}
