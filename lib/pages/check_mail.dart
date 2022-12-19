import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckYourMail extends StatelessWidget {
  const CheckYourMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(margin: EdgeInsets.only(left: 16.w, right: 16.w,
top: 56.h

      ),

      child: Column(children: [
        Row(children: [
          Icon(Icons.arrow_back,size: 24.h,color: AppColor.navyBlue,),
          SizedBox(width: 72.w,),
          Text('Verify Your Email',style: TextDimensions.style18600navyblue,)
        ],),
        SizedBox(height: 8.h,),
        Text('We have sent you a mail. Please click on the link in the message to verify your email address so that you can access the App.',style: TextDimensions.style14400blackTwo),
        SizedBox(height:48.h ,),
        Image.asset('images/mail.png',height: 200.h,width: 224.3.w,),
SizedBox(height: 80.h,),
        ColoredContainer(color: AppColor.grey, text: 'Check Your Mail', tap: () {  }, ),
        SizedBox(height: 8.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Didn’t receive the mail? ',style: TextDimensions.style12400black,),
          Text('Check your spam folder',style: TextDimensions.style14500black,)
        ],)
      ],),

      ),
    );
  }
}
