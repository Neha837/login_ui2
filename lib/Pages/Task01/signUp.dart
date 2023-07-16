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
  bool isEmail = false;

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
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Email",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              SizedBox(height: 1.h),
                                              TextField(
                                                  controller: _email,
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF)),
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "youremail@mail.com",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xff8F8F8F),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 17.sp),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              top: 2.h,
                                                              left: 2.5.h,
                                                              bottom: 2.h),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18),
                                                              borderSide:
                                                                  BorderSide(
                                                                width: 1.5,
                                                                color: Color(
                                                                    0xff31D8E3),
                                                              )),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18),
                                                        borderSide: BorderSide(
                                                            width: 1.5,
                                                            color: isEmail
                                                                ? Color(
                                                                    0xff8F8F8F)
                                                                : Colors.red),
                                                      ))),
                                              SizedBox(height: 1.h),
                                              if (!isEmail)
                                                Row(children: [
                                                  SizedBox(width: 1.h),
                                                  Icon(
                                                    Icons.warning_rounded,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(width: 1.h),
                                                  Text(
                                                    "Please enter the correct email address",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.sp),
                                                  ),
                                                ]),
                                              SizedBox(height: 2.h),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Username",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                height: 7.h,
                                                width: 90.w,
                                                child: TextField(
                                                  controller: _email,
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF)),
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Enter your username",
                                                      hintStyle: TextStyle(
                                                          color: Colors.white60,
                                                          fontSize: 17.sp),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              top: 1.h,
                                                              left: 2.5.h),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color: Color(
                                                                  0xff31D8E3))),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color: isEmail
                                                                  ? Color(0xff8F8F8F)
                                                                  : Colors.red))),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              if (!isEmail)
                                                Row(children: [
                                                  SizedBox(width: 1.h),
                                                  Icon(
                                                    Icons.warning_rounded,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(width: 1.h),
                                                  Text(
                                                    "Another user with this username already exist,please try something else",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.sp),
                                                  ),
                                                ]),
                                              SizedBox(height: 2.h),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Password",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                height: 7.h,
                                                width: 90.w,
                                                child: TextField(
                                                  controller: _email,
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF)),
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Pick a strong password",
                                                      hintStyle: TextStyle(
                                                          color: Colors.white60,
                                                          fontSize: 17.sp),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              top: 1.h,
                                                              left: 2.5.h),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color: Color(
                                                                  0xff31D8E3))),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color: isEmail
                                                                  ? Color(0xff8F8F8F)
                                                                  : Colors.red))),
                                                  obscureText: true,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              if (!isEmail)
                                                Row(children: [
                                                  SizedBox(width: 1.h),
                                                  Icon(
                                                    Icons.warning_rounded,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  SizedBox(width: 1.h),
                                                  Text(
                                                    "Password must be eight or more characters",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.sp),
                                                  ),
                                                ]),
                                              SizedBox(height: 2.h),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Confirm Password",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.sp),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Container(
                                                height: 7.h,
                                                width: 90.w,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF)),
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Type again your password to confirm",
                                                      hintStyle: TextStyle(
                                                          color: Colors.white60,
                                                          fontSize: 17.sp),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              top: 1.h,
                                                              left: 2.5.h),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color: Color(
                                                                  0xff31D8E3))),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          borderSide: BorderSide(
                                                              width: 1.5,
                                                              color:
                                                                  Color(0xff8F8F8F)))),
                                                  obscureText: true,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Theme(
                                                    data: Theme.of(context)
                                                        .copyWith(
                                                            unselectedWidgetColor:
                                                                Color(
                                                                    0xff8F8F8F)),
                                                    child: Checkbox(
                                                      value: is_checked,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                      onChanged: (val) {
                                                        setState(() {
                                                          is_checked = val!;
                                                        });
                                                      },
                                                      activeColor:
                                                          Color(0xff8F8F8),
                                                      checkColor:
                                                          Color(0xff31D8E3),
                                                    ),
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
                                                        color:
                                                            Color(0xff5385E5),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        decoration:
                                                            TextDecoration
                                                                .underline),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    FocusManager
                                                        .instance.primaryFocus!
                                                        .unfocus();
                                                    if (_email.text.isEmail) {
                                                      isEmail = true;
                                                    } else {
                                                      isEmail = false;
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
