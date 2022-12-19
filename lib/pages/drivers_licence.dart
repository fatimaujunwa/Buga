import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDriversLicence extends StatelessWidget {
  const UploadDriversLicence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  margin: EdgeInsets.only(top: 56.h, left: 16.w,right: 16.w),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(children: [
        Container(height:2.h ,width: 80.w,color: AppColor.navyBlue,),
        SizedBox(width: 6.w,),
        Container(height:2.h ,width: 80.w,color: AppColor.navyBlue,),
        SizedBox(width: 8.w,),
        Container(height:2.h ,width: 80.w,color: AppColor.grey.withOpacity(0.5),),
        SizedBox(width: 6.w,),
        Container(height:2.h ,width: 80.w,color: AppColor.grey.withOpacity(0.5),),

      ],),
      SizedBox(height: 14.h,),
      Text('Upload Driving License',style: TextDimensions.style18600,),
      SizedBox(height: 8.h,),
      Text('We will need to see your driving’s license before we can validate you as a driver.',style: TextDimensions.style14400blackh,),
      SizedBox(height: 16.h,),
      Text('Front View',style: TextDimensions.style14500black,),
      SizedBox(height: 8.h,),
      DottedBorder(
radius: Radius.circular(8.r),
          strokeWidth: 1,
          color: AppColor.navyBlue,
          child: Container(
            height: 200.h,
            width: 343.w,
            
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset('images/export.png',height: 40.h,width: 40.w,),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Click here to ',style: TextDimensions.style14400,),
            Text('Upload ',style: TextDimensions.style14500navy,),
            Text('image')
          ],)

        ],

      ),
          )),
      SizedBox(height: 32.h,),
      Text('Back View',style: TextDimensions.style14500black,),
      SizedBox(height: 8.h,),
      DottedBorder(
          radius: Radius.circular(18.r),
          strokeWidth: 1,
          strokeCap: StrokeCap.butt,
          color: AppColor.navyBlue,
          child: Container(
            height: 200.h,
            width: 343.w,


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/export.png',height: 40.h,width: 40.w,),
                SizedBox(height: 24.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Click here to ',style: TextDimensions.style14400,),
                    Text('Upload ',style: TextDimensions.style14500navy,),
                    Text('image')
                  ],)

              ],

            ),
          )),
      SizedBox(height: 32.h,),
      Align(
          alignment: Alignment.center,
          child: ColoredContainer(color: AppColor.grey, text: 'Continue', tap: () {  }, ))
    ],
  ),
),


    );
  }
}
