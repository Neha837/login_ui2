import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: LoginPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383B42),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
              top: 30,
            )),
            Image.asset(
              "assets/images/pic1.PNG",
              height: 46.h,
              width: 100.w,
            ),
            Container(
              height: 55.h,
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
                        height: 8.h,
                        width: 90.w,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xff31D8E3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Sign Up with Email",
                          style: TextStyle(
                              color: Color(
                                0xffffffff,
                              ),
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
                        style:
                            TextStyle(fontSize: 16.sp, color: Colors.white70),
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
                            height: 8.h,
                            width: 27.w,
                            child: Image.asset(
                              "assets/images/Vector.png",
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff1F2126),
                              border: Border.all(color: Color(0xff383B42)),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
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
                            height: 8.h,
                            width: 27.w,
                            child: Image.asset("assets/images/twitter.png"),
                            decoration: BoxDecoration(
                              color: Color(0xff1F2126),
                              border: Border.all(color: Color(0xff383B42)),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
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
                            height: 8.h,
                            width: 27.w,
                            child: Image.asset("assets/images/GoogleIcon.png"),
                            decoration: BoxDecoration(
                              color: Color(0xff1F2126),
                              border: Border.all(color: Color(0xff383B42)),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
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
                        style:
                            TextStyle(color: Colors.white70, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Sign in now",
                        style: TextStyle(
                            color: Color(0xff5385E5),
                            fontSize: 17.sp,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
