import 'package:bugaa/authentication.dart';
import 'package:bugaa/helper/validator.dart';
import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/pages/verification.dart';
import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.h, top: 64.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up!',
                  style: TextDimensions.style20600navy,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Create an account to get started...',
                  style: TextDimensions.style14400black,
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFieldWidget(
                  text: 'John Doe',
                  label: Text(
                    'Full Name',
                    style: TextDimensions.style12400black,
                  ),
                  controller: fullname,
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWidget(
                  text: 'Johnisdoe@me.com',
                  label: Text(
                    'Email Address',
                    style: TextDimensions.style12400black,
                  ),
                  controller: email,
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWidget(
                  text: 'password1234',
                  label: Text(
                    'Password',
                    style: TextDimensions.style12400black,
                  ),
                  obsText: true,
                  suffixIcon: true,
                  controller: password,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [

                    GetBuilder<Controller>(builder: (controller){
                    return
                      GestureDetector(onTap: (){
                        controller.Tick();

                      },
                      child:  controller.tappedTick?    Icon(Icons.check_box_outlined,
                        size: 14,
                        color: Color(0xffD62828),
                      ):
                        Icon(Icons.check_box_outline_blank,
                        size: 14,
                        color: AppColor.blackTwo,
                      )
                      );


                    }),

                    Text(
                      ' I agree to the',
                      style: TextDimensions.style12400black,
                    ),
                    Text(
                      ' terms of service',
                      style: TextDimensions.style12400red,
                    ),
                    Text(
                      ' and',
                      style: TextDimensions.style12400black,
                    ),
                    Text(
                      ' privacy policies',
                      style: TextDimensions.style12400red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 80.h,
                ),
                Align(
                    alignment: Alignment.center,
                    child: ColoredContainer(
                      color: AppColor.black300,
                      text: 'Sign Up',
                      tap: () {
Validation().signUp(email, password);
Get.find<Controller>().CreateAccount();
Get.find<Controller>().tappedTick!=false;

                      },
                    )),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextDimensions.style12400black,
                    ),
                    Text(
                      ' Log In',
                      style: TextDimensions.style12400red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or sign up with',
                    style: TextDimensions.style12400grey,
                  ),
                ),
                SizedBox(
                  height: 64.h,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.navyBlue)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Vector-5.png',
                            height: 12.h,
                            width: 12.w,
                          ),
                          SizedBox(
                            width: 12.67.w,
                          ),
                          Text(
                            'Google',
                            style: TextDimensions.style16500navyBlue,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      width: 164.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.navyBlue)),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Vector-6.png',
                              height: 12.h,
                              width: 12.w,
                            ),
                            SizedBox(
                              width: 12.67.w,
                            ),
                            Text(
                              'Facebook',
                              style: TextDimensions.style16500navyBlue,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget(
      {Key? key,
      required this.text,
      required this.label,
      this.suffixIcon = false,
      this.obsText = false,
      this.width = 343,
      this.height = 40,
      required this.controller})
      : super(key: key);
  final String text;
  final Widget label;
  final bool suffixIcon;
  final bool obsText;
  final double height;
  final double width;
  final TextEditingController controller;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft, child: widget.label),
        Container(
          height: widget.height.h,
          width: widget.width.w,
          child: TextField(
            controller: widget.controller,
            obscureText: visibility ? true : false,
            decoration: InputDecoration(
                hintText: widget.text,
                hintStyle: TextDimensions.style12400grey,
                suffixIcon: widget.suffixIcon
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        child: visibility
                            ? Icon(
                                Icons.visibility_off_outlined,
                                color: AppColor.navyBlue,
                                size: 20,
                              )
                            : Icon(
                                Icons.visibility,
                                color: AppColor.navyBlue,
                                size: 20,
                              ),
                      )
                    : Text(''),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.blackTwo))),
          ),
        ),
      ],
    );
  }
}
