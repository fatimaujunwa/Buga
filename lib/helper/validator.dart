import 'package:bugaa/helper/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

import '../authentication.dart';
import '../controller/controller.dart';
import '../pages/custom_snabar.dart';

class Validation{
  void signUp(
      TextEditingController email,
      TextEditingController password,
      ) {

    String emailController = email.text.trim();
    String passwordController = password.text.trim();
    if (emailController.isEmpty && passwordController.isEmpty) {
      showCustomSnackBar('Please type in your details', "user details");
    } else {
      if (emailController.isEmpty) {
        showCustomSnackBar('email field is required', 'Sign up message');
      } else if (passwordController.isEmpty) {
        showCustomSnackBar('password field is required', 'Sign up message');
      } else {
        if (!GetUtils.isEmail(emailController)) {
          showCustomSnackBar(
              'please input a valid email address', 'Sign up message');
        }

        if (password.text.length < 8) {
          showCustomSnackBar(
              'password length is short please input a longer password',
              'Sign up message');
        }
        if(Get.find<Controller>().tappedTick!=true){
          showCustomSnackBar(
              'You have to agree to the terms of service',
              'Terms of service');
        }
// if(RegExp(r'^').hasMatch(passwordController)){}
        //"user@email.co.za"
        //"*********"www
        // else {
        //   Authentication().registerUserWithEmailAndPassword(
        //       emailController, passwordController).then((status) {
        //
        //     if (status.success == true) {
        //       showCustomSnackBar(
        //           'Your account has been created successfully! Please Sign in',
        //           'Sign up message');
        //       Get.toNamed(RouteHelper.getSecondOnBoarding());
        //     }
        //     else if (status.success == null) {
        //       print('success ' + status.success.toString());
        //       showCustomSnackBar(
        //           'Unsuccessful attempt to create account please try again!',
        //           'Sign up message');
        //     }
        //   } );
        //   email.clear();
        //   password.clear();
        //
        //
        //
        // }
      }
    }
  }

  void login(
      TextEditingController email,
      TextEditingController password,
      ) {

    String emailController = email.text.trim();
    String passwordController = password.text.trim();
    if (emailController.isEmpty && passwordController.isEmpty) {
      showCustomSnackBar('Please type in your details', "user details");
    } else {
      if (emailController.isEmpty) {
        showCustomSnackBar('email field is required', 'Sign up message');
      } else if (passwordController.isEmpty) {
        showCustomSnackBar('password field is required', 'Sign up message');
      } else {
        if (!GetUtils.isEmail(emailController)) {
          showCustomSnackBar(
              'please input a valid email address', 'Sign up message');
        }

        if (password.text.length < 8) {
          showCustomSnackBar(
              'password length is short please input a longer password',
              'Sign up message');
        }
        if(Get.find<Controller>().tappedTick!=true){
          showCustomSnackBar(
              'You have to agree to the terms of service',
              'Terms of service');
        }
// if(RegExp(r'^').hasMatch(passwordController)){}
        //"user@email.co.za"
        //"*********"www
        // else {
        //   Authentication().registerUserWithEmailAndPassword(
        //       emailController, passwordController).then((status) {
        //
        //     if (status.success == true) {
        //       showCustomSnackBar(
        //           'Your account has been created successfully! Please Sign in',
        //           'Sign up message');
        //       Get.toNamed(RouteHelper.getSecondOnBoarding());
        //     }
        //     else if (status.success == null) {
        //       print('success ' + status.success.toString());
        //       showCustomSnackBar(
        //           'Unsuccessful attempt to create account please try again!',
        //           'Sign up message');
        //     }
        //   } );
        //   email.clear();
        //   password.clear();
        //
        //
        //
        // }
      }
    }
  }


  void getQuote(
      TextEditingController paddress,
      TextEditingController daddress,
      TextEditingController Weight,
      TextEditingController length,
      TextEditingController weight,
      TextEditingController height,
      TextEditingController quantity

      ) {

    String paddressController = paddress.text.trim();
    String daddressController = daddress.text.trim();
    String WeightController = Weight.text.trim();
    String lengthController = length.text.trim();
    String weightController = weight.text.trim();
    String heightController = height.text.trim();
    String quantityController = quantity.text.trim();

    if (paddressController.isEmpty && daddressController.isEmpty&&
        WeightController.isEmpty&& lengthController.isEmpty
        && weightController.isEmpty&& heightController.isEmpty&& quantityController.isEmpty) {
      showCustomSnackBar('Please type in your details', "Address details");
    } else {
      if (paddressController.isEmpty) {
        showCustomSnackBar('pick up address field is required', 'Address message');
      } else if (daddressController.isEmpty) {
        showCustomSnackBar('delivery address is required', 'Address message');
      }
      else if (WeightController.isEmpty) {
        showCustomSnackBar('Weight field is required', 'Package message');
      }
      else if (lengthController.isEmpty) {
        showCustomSnackBar('length dimension field is required', 'Package message');
      }
      else if (weightController.isEmpty) {
        showCustomSnackBar('weight dimension is required', 'Package message');
      }
      else if (heightController.isEmpty) {
        showCustomSnackBar('height dimension is required', 'Package message');
      } else if (quantityController.isEmpty) {
        showCustomSnackBar('quantity field is required', 'Package message');
      }


      else {

// if(RegExp(r'^').hasMatch(passwordController)){}
        //"user@email.co.za"
        //"*********"www
        // else {
        //   Authentication().registerUserWithEmailAndPassword(
        //       emailController, passwordController).then((status) {
        //
        //     if (status.success == true) {
        //       showCustomSnackBar(
        //           'Your account has been created successfully! Please Sign in',
        //           'Sign up message');
        //       Get.toNamed(RouteHelper.getSecondOnBoarding());
        //     }
        //     else if (status.success == null) {
        //       print('success ' + status.success.toString());
        //       showCustomSnackBar(
        //           'Unsuccessful attempt to create account please try again!',
        //           'Sign up message');
        //     }
        //   } );
        //   email.clear();
        //   password.clear();
        //
        //
        //
        // }
      }
    }
  }
}