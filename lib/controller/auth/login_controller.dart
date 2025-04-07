import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
   email = TextEditingController();
   password = TextEditingController();
    super.onInit();
  }
  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  goToForgetPassword() {
   Get.toNamed(AppRoute.forgetPassword);
  }
}
