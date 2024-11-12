import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Task09/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class moreinfoscreen extends StatefulWidget {
  const moreinfoscreen({super.key});

  @override
  State<moreinfoscreen> createState() => _moreinfoscreenState();
}

class _moreinfoscreenState extends State<moreinfoscreen> {
  TextEditingController _age = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _location = TextEditingController();
  TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: 30.h,
          child: Padding(
              padding: EdgeInsets.only(top: 13.h, bottom: 8.h),
              child: Image.asset("assets/logos/gabu_logo.png"))),
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffDA3AB4).withOpacity(0.25),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffDA3AB4).withOpacity(0.45),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          child: Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Container(
                                      constraints: BoxConstraints.expand(),
                                      decoration: BoxDecoration(
                                          color: Color(0xffDA3AB4),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(35),
                                              topRight: Radius.circular(35))),
                                      child: SingleChildScrollView(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5.5.h,
                                                  top: 8.h,
                                                  right: 5.5.h,
                                                  bottom: 3.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    textwidgetmontserrat(
                                                        "Information",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontsize: 20.sp),
                                                    SizedBox(height: 1.h),
                                                    textwidgetmontserrat(
                                                        "Add info here"),
                                                    SizedBox(height: 4.h),
                                                    customtextfield(
                                                        "Enter Your Age",
                                                        _age,
                                                        Icons.person),
                                                    SizedBox(height: 2.h),
                                                    customtextfield(
                                                        "Select Gender",
                                                        _gender,
                                                        Icons.transgender),
                                                    SizedBox(height: 2.h),
                                                    customtextfield(
                                                        "Select Location",
                                                        _location,
                                                        Icons.location_on),
                                                    SizedBox(height: 2.h),
                                                    customtextfield(
                                                        "Add Address",
                                                        _address,
                                                        Icons.camera_enhance),
                                                    SizedBox(height: 5.h),
                                                    Center(
                                                        child: custombuttonnext(
                                                            "next"))
                                                  ])))))))))))
    ]));
  }
}
