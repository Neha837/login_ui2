import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/login.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task02 extends StatefulWidget {
  Task02({super.key});

  @override
  State<Task02> createState() => _PageState();
}

class _PageState extends State<Task02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Text(
                  "NIGHTLY",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Container(
                        height: 11.sp,
                        width: 40.sp,
                        decoration: BoxDecoration(color: Color(0xffE4B922)),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Text(
                      "W H A T ' S",
                      style: TextStyle(
                        color: Color(0xffE4B922),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Text("U P ?",
                        style: TextStyle(
                            color: Color(0xffE4B922),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(height: 72.sp),
                Text(
                  "Are you a user",
                  style: TextStyle(
                      color: Color(0xffE4B922),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "or establishment?",
                  style: TextStyle(
                      color: Color(0xffE4B922),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 51.sp,
                      width: 50.sp,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFFFFF)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/user.png",
                              height: 13.h,
                              width: 13.w,
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "User",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15.sp),
                    Container(
                      height: 51.sp,
                      width: 50.sp,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffFFFFFF)),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/food.png",
                              height: 13.h,
                              width: 13.w,
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "Establishment",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(loginPage());
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
