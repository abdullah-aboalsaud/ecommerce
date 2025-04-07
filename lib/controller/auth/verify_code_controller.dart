import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  late String verifyCode;


  @override
  checkCode() {
  }
  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
}
