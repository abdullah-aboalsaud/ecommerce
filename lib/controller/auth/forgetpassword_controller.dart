import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();

  goToVerifyCode();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    super.onClose();
  }

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      //valid
      Get.offNamed(AppRoute.verifyCode);
    } else {
      // not valid
    }
  }
}
