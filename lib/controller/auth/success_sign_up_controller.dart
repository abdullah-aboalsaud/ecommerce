import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.loginScreen);
  }
}
