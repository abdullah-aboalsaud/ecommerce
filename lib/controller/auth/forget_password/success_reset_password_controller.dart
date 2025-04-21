import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerIml extends SuccessResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.loginScreen);
  }
}
