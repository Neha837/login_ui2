import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Task08/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task08A extends StatefulWidget {
  const Task08A({super.key});

  @override
  State<Task08A> createState() => _Task08AState();
}

class _Task08AState extends State<Task08A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 100.w,
          height: 50.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/berlin.png"),
                  fit: BoxFit.fill)),
          child: Stack(children: [
            Positioned(
                left: 5.w,
                top: 6.h,
                child: Container(
                    height: 4.8.h,
                    width: 8.8.w,
                    decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(Icons.arrow_back_ios_new,
                        color: Colors.white, size: 3.h))),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                    height: 14.5.h,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35))))),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 14.5.h,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(35))),
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 5.h, top: 1.5.h, right: 3.h),
                        child: Column(children: [
                          Row(children: [
                            textwithopensans("Berlin Nue Club",
                                color: Colors.white,
                                fontsize: 18.5.sp,
                                fontWeight: FontWeight.w600),
                            Spacer(),
                            Icon(Icons.favorite, color: Colors.white, size: 3.h)
                          ]),
                          SizedBox(height: 1.5.h),
                          Row(children: [
                            textwithopensans("Sat - Sun",
                                color: Colors.white,
                                fontsize: 17.sp,
                                fontWeight: FontWeight.w600)
                          ]),
                          Row(children: [
                            textwithopensans("50% off à la carte",
                                color: Colors.white,
                                fontsize: 14.5.sp,
                                fontWeight: FontWeight.w600),
                            Spacer(),
                            Image.asset("assets/icons/unisex icon.png",
                                height: 2.3.h),
                            SizedBox(width: .2.h),
                            Image.asset("assets/icons/unisex icon.png",
                                height: 2.3.h),
                            SizedBox(width: .2.h),
                            Image.asset("assets/icons/unisex icon.png",
                                height: 2.3.h),
                            SizedBox(width: .2.h),
                            Image.asset("assets/icons/unisex icon.png",
                                height: 2.3.h),
                            SizedBox(width: 1.h),
                            textwithopensans("4 Max",
                                color: Colors.white, fontsize: 14.5.sp)
                          ])
                        ]))))
          ])),
      Padding(
          padding: EdgeInsets.only(top: 3.h, right: 5.h, left: 5.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            textwithopensans("MO - FR lunch\nMO - We Dinner",
                textAlign: TextAlign.left, fontsize: 15.5.sp),
            SizedBox(height: 3.h),
            textwithopensans(
                "A la carte only, not valid in conjunction\nwith menus or other discounted menus",
                textAlign: TextAlign.left,
                fontsize: 15.5.sp),
            SizedBox(height: 3.h),
            textwithopensans(
                "Reservations and walk-ins welcome\nQuote “Hospo app: on booking and arrival",
                textAlign: TextAlign.left,
                fontsize: 15.5.sp),
            SizedBox(height: 2.2.h),
            Divider(thickness: 1.2, height: 30, color: Color(0xffD0D0D0)),
            Row(children: [
              Image.asset("assets/icons/map-pin.png", height: 2.5.h),
              SizedBox(width: 1.h),
              textwithopensans("Test teste test 25, 10234 Berlin",
                  fontsize: 15.sp)
            ]),
            Divider(thickness: 1.2, height: 30, color: Color(0xffD0D0D0)),
            SizedBox(height: 1.h),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(width: 2.w),
              Image.asset("assets/icons/phone.png", height: 2.8.h),
              SizedBox(width: 4.w),
              Image.asset("assets/icons/mail.png", height: 2.8.h),
              SizedBox(width: 4.w),
              Image.asset("assets/icons/instagram.png", height: 2.8.h),
              SizedBox(width: 4.w),
              Image.asset("assets/icons/globe.png", height: 2.8.h)
            ]),
            SizedBox(height: 1.5.h),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 5.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0,
                            offset: Offset(5.0, 5.0))
                      ],
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: textwithopensans("Reservation",
                          color: Colors.white,
                          fontsize: 15.sp,
                          fontWeight: FontWeight.w400))),
              SizedBox(width: 2.w),
              Container(
                  height: 5.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0,
                            offset: Offset(5.0, 5.0))
                      ],
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: textwithopensans("Redeem Offer",
                          color: Colors.white,
                          fontsize: 15.sp,
                          fontWeight: FontWeight.w400)))
            ])
          ]))
    ])));
  }
}
