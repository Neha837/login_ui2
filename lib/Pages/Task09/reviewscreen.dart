import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_ui/Pages/Task09/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class reviewscreen extends StatefulWidget {
  const reviewscreen({super.key});

  @override
  State<reviewscreen> createState() => _reviewscreenState();
}

class _reviewscreenState extends State<reviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: 100.h,
          child: Stack(children: [
            SizedBox(
                height: 50.h,
                child: Image.asset("assets/images/review.png",
                    fit: BoxFit.fill, width: 100.w)),
            Positioned(
                bottom: 29,
                left: 0,
                right: 0,
                child: Container(
                    // constraints: BoxConstraints.expand(),
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 5.h, right: 5.h, top: 4.5.w),
                        child: Column(children: [
                          Row(children: [
                            Icon(Icons.arrow_back,
                                size: 3.5.h, color: Color(0xff9D9D9D)),
                            Spacer(),
                            Container(
                                height: 3.5.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffFF4539),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                    child: textwidgetmontserrat("50% off",
                                        fontWeight: FontWeight.w600,
                                        fontsize: 16.sp)))
                          ]),
                          SizedBox(height: 2.h),
                          Row(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textwidgetmontserrat(
                                      "Chilean Semolina\nPudding",
                                      color: Colors.black,
                                      fontsize: 18.5.sp,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.start),
                                  SizedBox(height: 1.h),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RatingBar.builder(
                                            minRating: 1,
                                            maxRating: 5,
                                            initialRating: 4,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 2.5.h,
                                            itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                        SizedBox(width: 1.h),
                                        textwidgetmontserrat("4.8",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontsize: 14.5.sp)
                                      ])
                                ]),
                            Spacer(),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                      radius: 2.h,
                                      backgroundColor: Color(0xff07CD7C),
                                      child: Icon(Icons.share,
                                          color: Colors.white, size: 2.5.h)),
                                  SizedBox(height: 2.w),
                                  Row(children: [
                                    textwidgetmontserrat("199\$",
                                        color: Color(0xffBBBBBB),
                                        fontsize: 19.sp,
                                        fontWeight: FontWeight.w500,
                                        textdecoration:
                                            TextDecoration.lineThrough),
                                    SizedBox(width: 2.w),
                                    textwidgetmontserrat("99\$",
                                        color: Color(0xff01B3E3),
                                        fontsize: 21.sp,
                                        fontWeight: FontWeight.w600)
                                  ])
                                ])
                          ]),
                          SizedBox(height: 1.h),
                          textwidgetmontserrat(
                              "Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has been the industry's\nstandard dummy text ever since the 1500s, when an\nunknown",
                              color: Color(0xff797979),
                              fontsize: 14.5.sp,
                              fontWeight: FontWeight.w500),
                          SizedBox(height: 2.h),
                          Row(children: [
                            textwidgetmontserrat("Comments",
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontsize: 15.sp),
                            Spacer(),
                            Container(
                                height: 3.5.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xff043057), width: 1.5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                    child: textwidgetmontserrat("Add review",
                                        color: Color(0xff043057),
                                        fontWeight: FontWeight.w600)))
                          ]),
                          SizedBox(height: 1.h),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: Column(children: [
                                        commentwidget(
                                            "person1.png",
                                            "Arush Mantan",
                                            "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem Ipsum\nhas been the industry's standard."),
                                        SizedBox(height: 2.h),
                                        commentwidget(
                                            "person1.png",
                                            "Arush Mantan",
                                            "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem Ipsum\nhas been the industry's standard."),
                                        SizedBox(height: 2.h),
                                        commentwidget(
                                            "person1.png",
                                            "Arush Mantan",
                                            "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. Lorem Ipsum\nhas been the industry's standard.")
                                      ]))))
                        ])))),
            Positioned(
                bottom: 4.h,
                left: 0,
                right: 0,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CircleAvatar(
                      radius: 3.h,
                      backgroundColor: Color(0xFFff4539),
                      child: Center(
                          child: Icon(Icons.favorite,
                              color: Colors.white, size: 3.3.h))),
                  SizedBox(width: 2.w),
                  Container(
                      height: 6.h,
                      width: 68.w,
                      decoration: BoxDecoration(
                          color: Color(0xFFFEC842),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/christms.png",
                                height: 2.5.h),
                            SizedBox(width: 2.w),
                            textwidgetmontserrat("CRISMAX50",
                                color: Color(0xFF042F57),
                                fontWeight: FontWeight.w600,
                                fontsize: 17.sp)
                          ]))
                ]))
          ]))
    ]));
  }
}
