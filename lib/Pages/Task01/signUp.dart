import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});
  @override
  State<SignupPage> createState() => _PageState();
}

class _PageState extends State<SignupPage> {
  bool is_checked = false;
  TextEditingController _email = new TextEditingController();
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _passwordAgain = new TextEditingController();
  // Error handling
  bool isEmailError = false;
  bool isUserNameError = false;
  bool isPasswordError = false;
  bool isAgainPasswordError = false;

  Widget field(String title, String hint, TextEditingController controller,
      bool errorCheck, String errorMessage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(title,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp))),
        SizedBox(height: 1.h),
        TextField(
            controller: controller,
            onChanged: (_) {
              setState(() {
                errorCheck = false;
              });
            },
            style: TextStyle(color: Color(0xffFFFFFF)),
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                    color: Color(0xff8F8F8F),
                    fontWeight: FontWeight.w500,
                    fontSize: 17.sp),
                contentPadding:
                    EdgeInsets.only(top: 2.h, left: 2.5.h, bottom: 2.h),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                        BorderSide(width: 1.5, color: Color(0xff31D8E3))),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(
                      width: 1.5,
                      color: !errorCheck ? Color(0xff8F8F8F) : Colors.red),
                ))),
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1F2126),
        body: SafeArea(
            child: Column(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff292B31),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 4.h,
                        width: 4.h,
                        child: Icon(Icons.chevron_left,
                            size: 20, color: Colors.white))),
                Spacer(),
                Container(
                    child: Image.asset("assets/icons/vector.png", height: 6.h)),
                Spacer(),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 4.h,
                    height: 4.h,
                    child: Icon(Icons.chevron_left, color: Colors.transparent))
              ])),
          SizedBox(height: 15),
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
                        Text("Sign Up",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 2.2.h),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    width: 100.w,
                                    padding: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                        color: Color(0xff1F2126),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        )),
                                    child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 2.h),
                                              field(
                                                  'Email',
                                                  "Enter your email address",
                                                  _email,
                                                  isEmailError,
                                                  'Enter valid email address'),
                                              SizedBox(height: 1.5.h),
                                              field(
                                                  'UserName',
                                                  "Enter User Name",
                                                  _username,
                                                  isUserNameError,
                                                  'UserName is Missing'),
                                              SizedBox(height: 1.5.h),
                                              field(
                                                  'Password',
                                                  "Enter your Password",
                                                  _password,
                                                  isPasswordError,
                                                  'Enter valid Password'),
                                              SizedBox(height: 1.5.h),
                                              field(
                                                  'Reenter Password',
                                                  "Enter your password again",
                                                  _passwordAgain,
                                                  isAgainPasswordError,
                                                  'Your password not matched'),
                                              SizedBox(height: 3.h),
                                              InkWell(
                                                  onTap: () {
                                                    FocusManager
                                                        .instance.primaryFocus!
                                                        .unfocus();
                                                    if (_email.text.isEmail) {
                                                      isEmailError = false;
                                                    } else {
                                                      isEmailError = true;
                                                      setState(() {});
                                                      return;
                                                    }

                                                    if (_username.text == "") {
                                                      isUserNameError = true;
                                                      setState(() {});
                                                      return;
                                                    } else {
                                                      isUserNameError = false;
                                                    }

                                                    if (_password.text.length <
                                                        8) {
                                                      isPasswordError = true;
                                                      setState(() {});
                                                      return;
                                                    } else {
                                                      isPasswordError = false;
                                                    }

                                                    if (_password.text ==
                                                        _passwordAgain.text) {
                                                      isAgainPasswordError =
                                                          false;
                                                    } else {
                                                      isAgainPasswordError =
                                                          true;
                                                      setState(() {});
                                                      return;
                                                    }
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                      height: 7.h,
                                                      width: 90.w,
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape
                                                              .rectangle,
                                                          color:
                                                              Color(0xff31D8E3),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      20))),
                                                      child: Text("Sign Up",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffffffff),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize:
                                                                  18.sp)))),
                                              SizedBox(height: 2.h)
                                            ])))))
                      ]))))
        ])));
  }
}
