import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/Pages/Task02/signup2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _PageState();
}

class _PageState extends State<loginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isEmailError = false;
  bool isPasswordError = false;

  Widget field(
    String hint,
    TextEditingController controller,
    bool errorCheck,
    String errorMessage,
    IconData icon,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: [
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
                hintStyle: TextStyle(
                  color: Color(0xff8E8E8E),
                  fontSize: 17.sp,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xff002065))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: !errorCheck ? Color(0xffBFBFBF) : Colors.red)),
                // contentPadding:
                //     EdgeInsets.only(top: 2.h, left: 2.5.h, bottom: 2.h),
                contentPadding: EdgeInsets.only(left: 2.h)),
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
        ],
      ),
    );
  }

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
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  "NIGHTLY",
                  style: TextStyle(
                    color: Color(0xff1E3A77),
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Container(
                        height: 10.sp,
                        width: 35.sp,
                        decoration: BoxDecoration(color: Color(0xffE4B922)),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Text(
                      "W H A T ' S",
                      style: TextStyle(
                          color: Color(0xffE4B922),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 1.w),
                    Text("U P ?",
                        style: TextStyle(
                            color: Color(0xffE4B922),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                field(
                  "Enter email here",
                  _email,
                  isEmailError,
                  "Enter a valid email address",
                  Icons.email_outlined,
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                field(
                    "Enter password here",
                    _password,
                    isPasswordError,
                    "Please Enter the correct password",
                    Icons.password_outlined),
                SizedBox(height: 1.h),
                Padding(
                  padding: EdgeInsets.only(right: 38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget password?",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.h),
                InkWell(
                  onTap: () {
                    FocusManager.instance.primaryFocus!.unfocus();
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
                    setState(() {});
                  },
                  child: Container(
                    height: 7.5.h,
                    width: 85.w,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff1E3A77),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(
                            0xffFFFFFF,
                          ),
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 16.5.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 1.w),
                    InkWell(
                      onTap: () {
                        Get.to(signup2Page());
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 16.5.sp,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 6.h),
                Container(
                  height: 6.5.h,
                  width: 80.w,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: Color(0xff9E9E9E))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/google.png",
                        height: 3.5.h,
                      ),
                      SizedBox(width: 2.h),
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Color(0xff202020),
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp),
                      ),
                    ],
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
