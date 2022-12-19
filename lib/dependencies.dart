import 'package:bugaa/image_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/controller.dart';

Future<void>init(
    )async{
  //shared preferences

  Get.lazyPut(() => Controller());
  Get.lazyPut(() => ImageController());




}