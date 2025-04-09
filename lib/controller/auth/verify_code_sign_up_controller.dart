import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();

  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImpl extends VerifyCodeSignUpController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUpScreen);
  }

}
