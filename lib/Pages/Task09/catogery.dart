import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Task09/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class catogery extends StatefulWidget {
  const catogery({super.key});

  @override
  State<catogery> createState() => _catogeryState();
}

class _catogeryState extends State<catogery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 4.w, left: 3.5.h, right: 3.5.h),
                child: Column(children: [
                  Row(children: [
                    Image.asset("assets/icons/menu.png", height: 2.5.h),
                    Spacer(),
                    Image.asset("assets/logos/gabu_logo.png", height: 6.h)
                  ]),
                  SizedBox(height: 9.h),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(children: [
                      customcatogery("food_icon.png", "Food", 20.h,
                          Color(0XFFDA3AB4), 35.w),
                      SizedBox(height: 2.5.h),
                      customcatogery("pharmacy.png", "Pharmacy", 25.h,
                          Color(0XFFFF4539), 35.w),
                      SizedBox(height: 2.5.h),
                      customcatogery("hotel_icon.jpg", "Hotels", 25.h,
                          Color(0XFFFEC842), 35.w)
                    ]),
                    Spacer(),
                    Column(children: [
                      customcatogery("product_icon.jpg", "Products", 26.h,
                          Color(0XFF07CD7C), 35.w),
                      SizedBox(height: 2.5.h),
                      customcatogery("service_icon.jpg", "Services", 30.h,
                          Color(0XFF043057), 35.w),
                      SizedBox(height: 2.5.h),
                      Container(
                          height: 20.h,
                          width: 20.h,
                          decoration: BoxDecoration(
                              color: Color(0XFFD9D9D9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/icons/fav_icon.png",
                                    height: 4.5.h),
                                // SizedBox(height: 2.h),
                                textwidgetmontserrat("My Favs",
                                    color: Color(0xff656565),
                                    fontsize: 18.5.sp,
                                    fontWeight: FontWeight.bold)
                              ]))
                    ])
                  ])
                ]))));
  }
}
