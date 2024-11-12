import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Pages/Task01/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:custom_check_box/custom_check_box.dart';

class Task01B extends StatefulWidget {
  Task01B({super.key});
  @override
  State<Task01B> createState() => _PageState();
}

class _PageState extends State<Task01B> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _confirmpassword = new TextEditingController();
  // Error handling
  bool isEmailError = false;
  bool isUserNameError = false;
  bool isPasswordError = false;
  bool isconfirmpasswordError = false;

  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1F2126),
        appBar: AppBar(
            backgroundColor: Color(0xff1F2126),
            elevation: 0,
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      color: Color(0xff292B31),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 4.w),
                )),
            centerTitle: true,
            title: Image.asset("assets/icons/vector.png", height: 6.h)),
        body: SafeArea(
            child: Column(children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff31D8E3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.2.h),
                      child: Column(children: [
                        customtextwidget("Sign Up",
                            fontsize: 18.sp, fontWeight: FontWeight.w600),
                        SizedBox(height: 2.2.h),
                        Expanded(
                            child: SingleChildScrollView(
                          child: Container(
                              width: 100.w,
                              padding: EdgeInsets.only(bottom: 2.6.h),
                              decoration: BoxDecoration(
                                  color: Color(0xff1F2126),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.h,
                                      left: 2.h,
                                      right: 2.h,
                                      bottom: 3.5.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 2.h),
                                        field(
                                            'Email',
                                            "youremail@mail.com",
                                            _email,
                                            isEmailError,
                                            'Please enter the correct email address',
                                            false,
                                            false),
                                        SizedBox(height: 1.5.h),
                                        field(
                                            'Username',
                                            "Enter your username",
                                            _username,
                                            isUserNameError,
                                            'Another user with this username already\nexist, please try something else',
                                            false,
                                            false),
                                        SizedBox(height: 1.5.h),
                                        field(
                                            'Password',
                                            "Pick a strong password",
                                            _password,
                                            isPasswordError,
                                            'Password must be eight or more characters',
                                            true,
                                            true),
                                        SizedBox(height: 1.5.h),
                                        field(
                                            'Confirm Password',
                                            "Type again your password to confirm",
                                            _confirmpassword,
                                            isconfirmpasswordError,
                                            'Your password not matched',
                                            true,
                                            true),
                                        SizedBox(height: 3.h),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomCheckBox(
                                                  value: checkbox,
                                                  shouldShowBorder: true,
                                                  borderColor:
                                                      Color(0xff8F8F8F),
                                                  checkedFillColor:
                                                      Colors.transparent,
                                                  uncheckedFillColor:
                                                      Colors.transparent,
                                                  uncheckedIconColor:
                                                      Colors.transparent,
                                                  checkedIconColor:
                                                      Color(0xff31D8E3),
                                                  borderRadius: 5,
                                                  borderWidth: 1,
                                                  checkBoxSize: 14,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      checkbox = val;
                                                    });
                                                  }),
                                              RichText(
                                                  text: TextSpan(
                                                      text: 'I agree to ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12),
                                                      children: [
                                                    TextSpan(
                                                        text:
                                                            'Terms of Services',
                                                        style: GoogleFonts.poppins(
                                                            color: Colors
                                                                .blueAccent,
                                                            fontSize: 12,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline))
                                                  ]))
                                            ]),
                                        SizedBox(height: 1.h),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              customsignupbutton("Sign Up", () {
                                                if (checkbox) {
                                                  if (_email.text.isEmail) {
                                                    isEmailError = false;
                                                  } else {
                                                    isEmailError = true;
                                                  }
                                                  if (_username.text == "") {
                                                    isUserNameError = true;
                                                  } else {
                                                    isUserNameError = false;
                                                  }
                                                  if (_password.text.length <
                                                      8) {
                                                    isPasswordError = true;
                                                  } else {
                                                    isPasswordError = false;
                                                  }
                                                  if (_password.text ==
                                                      _confirmpassword.text) {
                                                    isconfirmpasswordError =
                                                        false;
                                                  } else {
                                                    isconfirmpasswordError =
                                                        true;
                                                  }
                                                } else {
                                                  Get.snackbar("Missing Check",
                                                      "Please agree to the terms and conditions",
                                                      backgroundColor:
                                                          Colors.grey[400]);
                                                }
                                                setState(() {});
                                              })
                                            ]),
                                        SizedBox(height: 1.7.h)
                                      ]))),
                        ))
                      ]))))
        ])));
  }
}
