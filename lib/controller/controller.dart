import 'package:bugaa/helper/router.dart';
import 'package:get/get.dart';

class Controller extends GetxController implements GetxService{
  bool _tapped=false;
  bool get tapped=>_tapped;
  bool _tappedTick=false;
  bool get tappedTick=>_tappedTick;

  Future<void> ClickLogin() async {
    _tapped=true;
    update();
    await Future.delayed(Duration(seconds: 3));


    Get.toNamed(RouteHelper.homeScreen);
    _tapped=false;
    update();

  }


  Future<void> ClickSignUp() async {
    _tapped=true;
    update();
    await Future.delayed(Duration(seconds: 3));


    Get.toNamed(RouteHelper.signUp);
    _tapped=false;
    update();

  }

  Future<void> CreateAccount() async {
    _tapped=true;
    update();
    await Future.delayed(Duration(seconds: 3));


    // Get.toNamed(RouteHelper.signUp);
    _tapped=false;
    update();

  }
  Future<void> Tick() async {
    _tappedTick=!_tappedTick;
    update();



    // Get.toNamed(RouteHelper.signUp);


  }
  Future<void> Profile() async {
    _tapped=true;
    update();
    await Future.delayed(Duration(seconds: 3));


    Get.toNamed(RouteHelper.profile);
    _tapped=false;
    update();

  }
  Future<void> Quote() async {
    _tapped=true;
    update();
    await Future.delayed(Duration(seconds: 3));


    // Get.toNamed(RouteHelper.profile);
    _tapped=false;
    update();

  }

}
