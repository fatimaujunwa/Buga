import 'package:bugaa/image_controller.dart';
import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:bugaa/pages/sign_up.dart';
import 'package:bugaa/util/custom_dropdown.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../util/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String phonevalue = '+1';
  String gendervalue = 'Select option';
  String agevalue = 'Select age';
  String locationvalue = 'Select location';

  var phoneitems = [
    '+1',
   '+234'
  ];
  var genderItems = [
    'Select option',
    'Male',
    'Female'
  ];
  var ageItems = [
    'Select age',
    '11',
    '12'
  ];
  var locationItems = [
    'Select location',
    'Abuja',
    'Oyo'
  ];
  @override
  Widget build(BuildContext context) {


    TextEditingController gender=TextEditingController();
    TextEditingController age=TextEditingController();
    TextEditingController location=TextEditingController();
    TextEditingController phone=TextEditingController();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16.w,right: 16.w,
top: 56.w
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Let\'s get you started!',style: TextDimensions.style18600,),
            SizedBox(height: 8.h,),
            Text('Kindly set up your account with the next few steps. Data privacy and security is assured...',style: TextDimensions.style14400blackh,),
            SizedBox(height: 32.h,),
            GestureDetector(
              onTap: (){
                Get.find<ImageController>().pickImage();
              },

              child: Align(alignment: Alignment.center,child:
              ClipOval(child: Container(height:96.h,width:96.w ,
            color:Color(0xffD9D9D9) ,
            child: Image.asset('images/Icon Left.png',height: 40.h,width: 40.w,),
              ),)

              ),
            ),

            SizedBox(height: 32.h,),
            TextFieldWidget(text: 'John Doe', label:  Text('Full Name',style: TextDimensions.style12400black,), controller: gender,),

            SizedBox(height: 24.h,),
            Text('Phone Number',style: TextDimensions.style12400black ),
          Row(children: [
            Container(
                padding: EdgeInsets.only(left: 10.w),

                // width: 64.w,
                decoration: BoxDecoration(

                    borderRadius: new BorderRadius.circular(4.r),
                    border: Border.all(color: AppColor.blackTwo.withOpacity(0.6))
                ),

                child: DropdownButtonHideUnderline(

                  child: DropdownButton2(
                      isExpanded: true,

                    icon: Icon(Icons.keyboard_arrow_down,color: AppColor.blackTwo.withOpacity(0.6),),
                    hint: Text(
                      '+1',
                      style: TextDimensions.style12400grey,

                    ),
                    items: phoneitems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextDimensions.style12400grey,

                      ),
                    ))
                        .toList(),
                    value: phonevalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        phonevalue = newValue!;
                       phone.text=phonevalue;
                      });
                    },
                    buttonHeight: 38.h,
                    buttonWidth: 64.w,
                    itemHeight: 38.h,
                      // buttonPadding: const EdgeInsets.only(left: 14, right: 80)

                  ),
                )),
           SizedBox(width: 8.w,),

           TextFieldWidget(text: '111-1111-111', label: Center(), controller: gender,width: 259.w,)
          ],),
            SizedBox(height: 24.h,),
            Text('Gender',style: TextDimensions.style12400black ),
            Container(
                padding: EdgeInsets.only(left: 10.w),

                // width: 64.w,
                decoration: BoxDecoration(

                    borderRadius: new BorderRadius.circular(4.r),
                    border: Border.all(color: AppColor.blackTwo.withOpacity(0.6))
                ),

                child: DropdownButtonHideUnderline(

                  child: DropdownButton2(
                    isExpanded: true,

                    icon: Icon(Icons.keyboard_arrow_down,color: AppColor.blackTwo.withOpacity(0.6),),
                    hint: Text(
                      'gender',
                      style: TextDimensions.style12400grey,

                    ),
                    items: genderItems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextDimensions.style12400grey,

                      ),
                    ))
                        .toList(),
                    value: gendervalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        gendervalue = newValue!;
                        gender.text=gendervalue;
                      });
                    },
                    buttonHeight: 40.h,
                    buttonWidth: 343.w,
                    itemHeight: 40.w,
                    // buttonPadding: const EdgeInsets.only(left: 14, right: 80)

                  ),
                )),
            SizedBox(height: 24.h,),
            Text('Age',style: TextDimensions.style12400black ),
            Container(
                padding: EdgeInsets.only(left: 10.w),

                // width: 64.w,
                decoration: BoxDecoration(

                    borderRadius: new BorderRadius.circular(4.r),
                    border: Border.all(color: AppColor.blackTwo.withOpacity(0.6))
                ),

                child: DropdownButtonHideUnderline(

                  child: DropdownButton2(
                    isExpanded: true,

                    icon: Icon(Icons.keyboard_arrow_down,color: AppColor.blackTwo.withOpacity(0.6),),
                    hint: Text(
                      '12',
                      style: TextDimensions.style12400grey,

                    ),
                    items: ageItems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextDimensions.style12400grey,

                      ),
                    ))
                        .toList(),
                    value: agevalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        agevalue = newValue!;
                        age.text=agevalue;
                      });
                    },
                    buttonHeight: 40.h,
                    buttonWidth: 343.w,
                    itemHeight: 40.w,
                    // buttonPadding: const EdgeInsets.only(left: 14, right: 80)

                  ),
                )),
            SizedBox(height: 24.h,),
            Text('Location',style: TextDimensions.style12400black ),
            Container(
                padding: EdgeInsets.only(left: 10.w),

                // width: 64.w,
                decoration: BoxDecoration(

                    borderRadius: new BorderRadius.circular(4.r),
                    border: Border.all(color: AppColor.blackTwo.withOpacity(0.6))
                ),

                child: DropdownButtonHideUnderline(

                  child: DropdownButton2(
                    isExpanded: true,

                    icon: Icon(Icons.keyboard_arrow_down,color: AppColor.blackTwo.withOpacity(0.6),),
                    hint: Text(
                      '+1',
                      style: TextDimensions.style12400grey,

                    ),
                    items: locationItems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextDimensions.style12400grey,

                      ),
                    ))
                        .toList(),
                    value: locationvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        locationvalue = newValue!;
                        location.text=locationvalue;
                      });
                    },
                    buttonHeight: 40.h,
                    buttonWidth: 343.w,
                    itemHeight: 40.w,
                    // buttonPadding: const EdgeInsets.only(left: 14, right: 80)

                  ),
                )),

            // CustomDropDown(controller: gender, hint: '+1', text: 'Gender', value: dropdownvalue, item: items),
            // SizedBox(height: 24.h,),
            // CustomDropDown(controller: gender, hint: 'Select gender', text: 'Gender', value: dropdownvalue, item: items),
            SizedBox(height: 40.h,),
            Align(
              alignment: Alignment.center,
              child: ColoredContainer(color: AppColor.grey, text: 'Continue', tap: (){

              }),
            )
          ],
        ),
      ),
    );
  }
}
