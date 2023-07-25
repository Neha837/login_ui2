import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class signup2Page extends StatefulWidget {
  signup2Page({super.key});

  @override
  State<signup2Page> createState() => _PageState();
}

class _PageState extends State<signup2Page> {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  bool isUserNameError = false;
  bool isEmailError = false;
  bool isPasswordError = false;
  bool isconfirmpasswordError = false;

  Widget field(
    String hint,
    TextEditingController controller,
    bool errorCheck,
    String errorMessage,
    IconData icon,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h),
      child: Column(children: [
        TextField(
          controller: controller,
          onChanged: (_) {
            setState(() {
              errorCheck = false;
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: TextStyle(color: Color(0xff8E8E8E), fontSize: 17.sp),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff002065))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: !errorCheck ? Color(0xffBFBFBF) : Colors.red)),
            contentPadding: EdgeInsets.only(top: 2.h, left: 2.5.h, bottom: 2.h),
          ),
        ),
        SizedBox(height: .5.h),
        if (errorCheck)
          Row(children: [
            SizedBox(width: 1.h),
            Icon(
              Icons.warning_rounded,
              color: Colors.red,
              size: 18,
            ),
            SizedBox(width: 1.h),
            Text(
              errorMessage,
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
          ])
      ]),
    );
  }

  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "NIGHTLY",
                  style: TextStyle(
                      color: Color(0xff1E3A77),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Container(
                        height: 12.sp,
                        width: 35.sp,
                        decoration: BoxDecoration(color: Color(0xffE4B922)),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Text(
                      "WHAT'S",
                      style: TextStyle(
                          color: Color(0xffE4B922),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 1.w),
                    Text("UP?",
                        style: TextStyle(
                            color: Color(0xffE4B922),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 2.5.h,
                    )),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  "Welcome! Register as a establishment to",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  "post 180 character news 'bites' of of events",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                ),
                Text(
                  "and special offers.",
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 1.h),
                field("Enter username", _username, isUserNameError,
                    "UserName is Missing", Icons.supervisor_account_outlined),
                SizedBox(height: 1.5.h),
                field(
                    "Enter email",
                    _email,
                    isEmailError,
                    "Please enter the correct email address",
                    Icons.email_outlined),
                SizedBox(height: 1.5.h),
                field("Enter password here", _password, isPasswordError,
                    "Password is Missing", Icons.lock_outline),
                SizedBox(height: 1.5.h),
                field(
                    "Confirm password",
                    _confirmpassword,
                    isconfirmpasswordError,
                    "Enter your password again",
                    Icons.lock_outline),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 10,
                    )),
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        }),
                    Text(
                      "I agree to abide by the",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.sp),
                    ),
                    SizedBox(width: .5.w),
                    Text(
                      "Terms of Service.",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15.sp,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (_username.text == "") {
                      isUserNameError = true;
                      setState(() {});
                      return;
                    } else {
                      isUserNameError = false;
                    }

                    if (_email.text.isEmail) {
                      isEmailError = false;
                    } else {
                      isEmailError = true;
                      setState(() {});
                      return;
                    }

                    if (_password.text.length < 8) {
                      isPasswordError = true;
                      setState(() {});
                      return;
                    } else {
                      isPasswordError = false;
                    }

                    if (_password.text == _confirmpassword.text) {
                      isconfirmpasswordError = false;
                    } else {
                      isconfirmpasswordError = true;
                      setState(() {});
                      return;
                    }
                    setState(() {});
                  },
                  child: Container(
                    height: 7.5.h,
                    width: 85.w,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff002065),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: Color(
                            0xffFFFFFF,
                          ),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
