import 'dart:async';

import 'package:bugaa/pages/onboarding/onboarding_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late Animation<double>animation;
  late AnimationController animationController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(vsync: this,
        duration:  const Duration(seconds:2 )

    )..forward();
    animation = new
    CurvedAnimation(parent: animationController, curve: Curves.decelerate);
    Timer

      (const Duration(seconds: 4), ()=>Get.offNamed(RouteHelper.getFirstOnBoarding()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child:
      ScaleTransition(

          scale: animation,
          child: Image.asset('images/Complete Logo.png'))

        ,),

    );
  }
}
