import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BoardingPage extends StatefulWidget {
  BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _PageState();
}

class _PageState extends State<BoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383B42),
      body: Column(
        children: [
          Container(
              height: 55.h,
              child: Padding(
                padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
                child: Image.asset("assets/icons/boarding.png"),
              )),
          Container(
            height: 45.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Color(0xff1F2126),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 7.h,
                      width: 90.w,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xff31D8E3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Sign Up with Email",
                        style: TextStyle(
                            color: Color(
                              0xffffffff,
                            ),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or Sign Up with",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 7.h,
                          width: 27.w,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/icons/apple.png"),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1F2126),
                            border: Border.all(color: Color(0xff383B42)),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7.h,
                          width: 27.w,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/icons/twitter.png"),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1F2126),
                            border: Border.all(color: Color(0xff383B42)),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7.h,
                          width: 27.w,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("assets/icons/google.png"),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1F2126),
                            border: Border.all(color: Color(0xff383B42)),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "Sign in now",
                      style: TextStyle(
                          color: Color(0xff5385E5),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
