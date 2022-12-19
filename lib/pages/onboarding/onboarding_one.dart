import 'package:bugaa/controller/controller.dart';
import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    print(  Get.find<Controller>().tapped);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 80.h),

          child: Column(
            children: [
              Container(
                width: 343.w,
                  height: 343.h,
                  child:
                  Carousel(
                    dotColor:AppColor.dotColor ,
                    dotIncreasedColor:AppColor.navyBlue ,

                    radius: Radius.circular(8.r),
                    noRadiusForIndicator: true,
                      dotBgColor: Colors.transparent,
                      images:[
                    Image.asset('images/Illustration.png'),
                    Image.asset('images/Illustration-2.png'),
                    Image.asset('images/Illustration-3.png'),

                  ]

                  )

              ),
              SizedBox(height: 32.h,),
              SizedBox(
                height:96.h ,
                width: 238.w,

                child: Carousel(
                    dotColor:AppColor.dotColor ,

showIndicator: false,


                    noRadiusForIndicator: true,
                    dotBgColor: Colors.transparent,
                    images:[
                      Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Order Pick-Up',style: TextDimensions.style24600,),
                          SizedBox(height: 8.h,),
                          Text('Track the driver until the goods are delivered',style: TextDimensions.style14400,textAlign: TextAlign.center,)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('In-App Tracker',style: TextDimensions.style24600,),
                          SizedBox(height: 8.h,),
                          Text('Track the driver until the goods are delivered',style: TextDimensions.style14400,textAlign: TextAlign.center,)
                        ],
                      ),
                      Column(
                        children: [
                          Text('Express Delivery',style: TextDimensions.style24600,),
                          SizedBox(height: 8.h,),
                          Text('Track the driver until the goods are delivered',style: TextDimensions.style14400,textAlign: TextAlign.center,)
                        ],
                      ),

                    ]

                ),
              ),

              SizedBox(
                  height: 104.h,


              ),
              ColoredContainer(color: AppColor.grey,text: 'Sign Up', tap: () {
                Get.find<Controller>().ClickSignUp();
                print(  Get.find<Controller>().tapped);

              }, ),
              SizedBox(height: 20.h,),
              Text('Log In',style: TextDimensions.style16500navyBlue,)


            ],
          )),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    Key? key,
    required this.color,
    required this.text,
    required this.tap,

  }) : super(key: key);
  final String text;
  final Color color;

  final Function() tap;


  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(builder: (controller){
     return GestureDetector(
        onTap: tap,
        child: Container(
          decoration: BoxDecoration(

              color:controller.tapped==true? AppColor.navyBlue:color,
              borderRadius: BorderRadius.circular(4.r)),
          alignment: Alignment.center,
          height: 48.h,width: 280.w,
          child: Text(text,style: TextDimensions.style16500,),

        ),
      );

    });


  }
}
