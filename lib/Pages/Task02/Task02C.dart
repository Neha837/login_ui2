import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/widget02.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Task02C extends StatefulWidget {
  Task02C({super.key});

  @override
  State<Task02C> createState() => _PageState();
}

class _PageState extends State<Task02C> {
  TextEditingController _email = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  bool isEmailError = false;
  bool isUserNameError = false;
  bool isPasswordError = false;
  bool isconfirmpasswordError = false;

  int _value = 0;
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
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/logos/nightly_dark.png",
                              height: 5.5.h),
                          SizedBox(height: 10.h),
                          Padding(
                              padding: EdgeInsets.only(left: 2.5.h),
                              child: Row(children: [
                                customtextwithmonteserrat("Register",
                                    fontsize: 21.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1B1B1B))
                              ])),
                          SizedBox(height: .5.h),
                          customtextwithmonteserrat(
                              "Welcome! Register as a establishment to\npost 180 character news 'bites' of of events\nand special offers.",
                              fontsize: 16.8.sp,
                              color: Color(0xff121212)),
                          SizedBox(height: 2.h),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                              child: Column(children: [
                                field(
                                    "Enter username",
                                    _username,
                                    isUserNameError,
                                    "UserName is Missing",
                                    Icons.supervisor_account_outlined,
                                    false),
                                SizedBox(height: 1.5.h),
                                field(
                                    "Enter email",
                                    _email,
                                    isEmailError,
                                    "Please enter the correct email address",
                                    Icons.email_outlined,
                                    false),
                                SizedBox(height: 1.5.h),
                                field(
                                    "Enter password here",
                                    _password,
                                    isPasswordError,
                                    "Password is Missing",
                                    Icons.lock_outline,
                                    true),
                                SizedBox(height: 1.5.h),
                                field(
                                    "Confirm password",
                                    _confirmpassword,
                                    isconfirmpasswordError,
                                    "Enter your password again",
                                    Icons.lock_outline,
                                    true),
                                SizedBox(height: 3.h),
                              ])),
                          Row(children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Radio(
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                  });
                                }),
                            customtextwithmonteserrat("I agree to abide by the",
                                fontWeight: FontWeight.w600,
                                fontsize: 15.sp,
                                color: Color(0xff3C3939)),
                            SizedBox(width: .5.w),
                            customtextwithmonteserrat("Terms of Service.",
                                fontWeight: FontWeight.w800,
                                fontsize: 15.sp,
                                textDecoration: TextDecoration.underline,
                                color: Color(0xff3C3939))
                          ]),
                          buttonwidget("Sign Up", () {
                            if (_username.text == "") {
                              isUserNameError = true;
                            } else {
                              isUserNameError = false;
                            }

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

                            if (_password.text == _confirmpassword.text) {
                              isconfirmpasswordError = false;
                            } else {
                              isconfirmpasswordError = true;
                            }
                            setState(() {});
                          }),
                          SizedBox(height: 2.h)
                        ])))));
  }
}
