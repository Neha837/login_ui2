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
        backgroundColor: Color(0xff383B42),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 30.h,
                child: Image.asset(
                  "assets/icons/vector",
                  // height: 1,
                ),
              )
            ],
          ),
        ));
  }
}
