import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();

  goToSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }
  @override
  void onClose() {
    password.dispose();
    rePassword.dispose();
    super.onClose();
  }
  @override
  resetPassword() {
  }
  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRoute.successResetPassword);
  }
}
