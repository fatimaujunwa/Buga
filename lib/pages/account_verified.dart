
import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';

class AccountVerified extends StatelessWidget {
  const AccountVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 56.h),
            child: Text('Account Verified', style: TextDimensions.style18600navyblue,),),
          SizedBox(height: 89.97.h,),
Image.asset('images/check-circle.png',height: 100.h,width: 100.w,),
          SizedBox(height: 50.03.h,),
          Text('Congratulations',style: TextDimensions.style20600,),
          SizedBox(height: 16.h,),
          Text('The email caramelcoker@hotmail.com is now a verified acount. Thank you for helping us keep your account verified.',style: TextDimensions.style14500blackh,textAlign: TextAlign.center,)
,SizedBox(height: 56.h,),
          ColoredContainer(color: AppColor.grey, text: 'Continue', tap: () {
            Get.find<Controller>().Profile();

          },)
        ],
      )

    );
  }
}
