import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();

  goToSuccessSignUp();
}

class CheckEmailControllerImpl extends CheckEmailController {
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
  checkEmail() {
  }
  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
}
