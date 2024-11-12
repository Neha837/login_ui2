import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/Task02C.dart';
import 'package:login_ui/Pages/Task02/widget02.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task02B extends StatefulWidget {
  const Task02B({super.key});

  @override
  State<Task02B> createState() => _PageState();
}

class _PageState extends State<Task02B> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isEmailError = false;
  bool isPasswordError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg2.png"),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(children: [
                      Image.asset("assets/logos/nightly_dark.png", height: 6.h),
                      SizedBox(height: 10.h),
                      Row(children: [
                        Padding(padding: EdgeInsets.all(20)),
                        customtextwithmonteserrat("Welcome Back",
                            fontsize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)
                      ]),
                      SizedBox(height: 1.5.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: Column(children: [
                            field(
                                "Enter email here",
                                _email,
                                isEmailError,
                                "Enter a valid email address",
                                Icons.email_outlined,
                                false),
                            SizedBox(height: 1.5.h),
                            field(
                                "Enter password here",
                                _password,
                                isPasswordError,
                                "Please Enter the correct password",
                                Icons.lock_outlined,
                                true)
                          ])),
                      SizedBox(height: 1.h),
                      Padding(
                          padding: EdgeInsets.only(right: 38),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                customtextwithmonteserrat("Forget password?",
                                    fontsize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0D0D0D)),
                              ])),
                      SizedBox(height: 7.h),
                      buttonwidget("Login", () {
                        if (_email.text.isEmail) {
                          isEmailError = false;
                        } else {
                          isEmailError = true;
                        }

                        if (_password.text.length < 8) {
                          isPasswordError = true;
                        } else {
                          isPasswordError = false;
                        }
                        setState(() {});
                      }),
                      SizedBox(height: 2.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customtextwithmonteserrat("Don't have an account?",
                                fontsize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3C3939)),
                            SizedBox(width: .5.w),
                            InkWell(
                              onTap: () {
                                Get.to(Task02C());
                              },
                              child: customtextwithmonteserrat("Signup",
                                  fontsize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  textDecoration: TextDecoration.underline,
                                  color: Color(0xff3C3939)),
                            )
                          ]),
                      SizedBox(height: 6.h),
                      Container(
                          height: 6.5.h,
                          width: 80.w,
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Color(0xff9E9E9E))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/google.png",
                                    height: 3.5.h),
                                SizedBox(width: 2.h),
                                customtextwithmonteserrat(
                                    "Continue with Google",
                                    color: Color(0xff202020),
                                    fontWeight: FontWeight.w500,
                                    fontsize: 17.sp)
                              ]))
                    ])))));
  }
}
