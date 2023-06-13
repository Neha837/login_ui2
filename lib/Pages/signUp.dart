import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _PageState();
}

class _PageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F2126),
      body: Column(
        children: [
          Container(
            height: 13.h,
            child: Padding(
              padding: EdgeInsets.only(
                top: 2.h,
                left: 20,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff292B31),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 5.h,
                    width: 5.h,
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/icons/vector.png",
                      height: 6.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff31D8E3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            height: 86.7.h,
            width: 100.w,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 77.8.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Color(0xff292B31),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: (Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 8.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 50, 52, 58),
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Color(0xff8F8F8F)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.h, left: 2.6.h),
                              child: Text(
                                "youremail@mail.com",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 15.sp),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Username",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 8.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 50, 52, 58),
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Color(0xff8F8F8F)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.h, left: 2.6.h),
                              child: Text(
                                "Enter your username",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 15.sp),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 8.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 50, 52, 58),
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Color(0xff8F8F8F)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.h, left: 2.6.h),
                              child: Text(
                                "Pick a strong password",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 15.sp),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Confirm Password",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 8.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 50, 52, 58),
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Color(0xff8F8F8F)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.h, left: 2.6.h),
                              child: Text(
                                "Type again your password to confirm",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 15.sp),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 2.2.h,
                                width: 2.2.h,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff8F8F8F)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "I agree to",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15.sp,
                                ),
                              ),
                              SizedBox(
                                width: 1.5.w,
                              ),
                              Text(
                                "Term of services",
                                style: TextStyle(
                                    color: Color(0xff5385E5),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
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
                              "Sign Up",
                              style: TextStyle(
                                  color: Color(
                                    0xffffffff,
                                  ),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
