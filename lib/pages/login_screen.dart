import 'package:bugaa/pages/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';
import '../helper/validator.dart';
import '../util/app_colors.dart';
import '../util/textdimension.dart';
import 'onboarding/onboarding_one.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  'Welcome back!',
                  style: TextDimensions.style20600navy,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Log in to your account to continue...',
                  style: TextDimensions.style14400black,
                ),
                SizedBox(
                  height: 40.h,
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
                      'Remember me',
                      style: TextDimensions.style12400black,
                    ),
                    Expanded(child: Container()),
                    Text('Forgot password',style: TextDimensions.style12400red,)

                  ],
                ),
                SizedBox(
                  height: 80.h,
                ),
                Align(
                    alignment: Alignment.center,
                    child: ColoredContainer(
                      color: AppColor.black300,
                      text: 'Log In',
                      tap: () {
                        Validation().signUp(email, password);
                        Get.find<Controller>().CreateAccount();

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
