import 'package:bugaa/controller/controller.dart';
import 'package:bugaa/helper/validator.dart';
import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../util/app_colors.dart';
import '../util/textdimension.dart';

class GetAQuote extends StatelessWidget {
  const GetAQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController paddress=TextEditingController();
    TextEditingController daddress=TextEditingController();
    TextEditingController address=TextEditingController();
    TextEditingController Weight=TextEditingController();
    TextEditingController length=TextEditingController();
    TextEditingController weight=TextEditingController();
    TextEditingController height=TextEditingController();
    TextEditingController quantity=TextEditingController();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16.w, right: 16.w,
          top: 56.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(Icons.arrow_back,size: 24.h,color: AppColor.navyBlue,),
              SizedBox(width: 72.w,),
              Text('Get A Quote',style: TextDimensions.style18600navyblue,),

            ],),
            SizedBox(height: 16.h,),
            Text('Fill in the details below to get an estimated price for your package(s)',style: TextDimensions.style12400black,),
            SizedBox(height: 16.h,),
            Row(
              children: [
                Text('Location',style: TextDimensions.style14500black,),
                Expanded(child: Container()),
                Icon(Icons.add,color: AppColor.navyBlue,size: 20.h,)
              ],
            ),
            SizedBox(height: 8.h,),

            TextFieldWidget(text: 'Enter pick-up address', label: Row(
              children: [
                Text('Pick-Up Address ',style: TextDimensions.style12400black),
                Text('*',style: TextStyle(color: AppColor.red),),
              ],
            ), controller: paddress,),
            SizedBox(height: 16.h,),
            TextFieldWidget(text: 'Enter delivery address', label: Row(
              children: [
                Text('Delivery Address',style: TextDimensions.style12400black),
                Text('*',style: TextStyle(color: AppColor.red),),
              ],
            ), controller: daddress,),
            SizedBox(height: 24.h,),
            Row(
              children: [
                Text('Package',style: TextDimensions.style14500black,),
                Expanded(child: Container()),
                Icon(Icons.add,color: AppColor.navyBlue,size: 20.h,)

              ],
            ),
            SizedBox(height: 24.h,),
            TextFieldWidget(text: 'Enter approximate weight of goods', label: Row(
              children: [
                Text('Weight',style: TextDimensions.style12400black),
                Text('*',style: TextStyle(color: AppColor.red),),
              ],
            ), controller: Weight,),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFieldWidget(text: 'Length', label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Dimension       ',style: TextDimensions.style12400black,)),
                width: 94, controller: length,

                ),

                SizedBox(width: 8.w,),
                Text('by',style: TextDimensions.style12400black,),
                SizedBox(width: 8.w,),
                TextFieldWidget(text: 'Weight', label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('',style: TextDimensions.style12400black,)),
                  width: 94, controller: weight,

                ),
                SizedBox(width: 8.w,),
                Text('by',style: TextDimensions.style12400black,),
                SizedBox(width: 8.w,),
                TextFieldWidget(text: 'Height', label: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('',style: TextDimensions.style12400black,)),
                  width: 94, controller: height,

                ),

              ],
            ),
            SizedBox(height: 16.h,),
            TextFieldWidget(text: 'Enter value', label: Row(
              children: [
                Text('Quantity',style: TextDimensions.style12400black),
                Text('*',style: TextStyle(color: AppColor.red),),
              ],
            ), controller: quantity,),
            SizedBox(height: 96.h,),
            Align(
                alignment: Alignment.center,
                child: ColoredContainer(color: AppColor.navyBlue, text: 'Get A Qoute', tap: () {
                  Validation().getQuote(paddress, daddress, Weight, length, weight, height, quantity);
                  Get.find<Controller>().Quote();
                },))

          ],
        ),
      ),

    );
  }
}
