import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  goToLogin();
  signUp();
}

class SignupControllerImp extends SignUpController {
  late TextEditingController userName;
  late TextEditingController signUpEmail;
  late TextEditingController signUpPassword;
  late TextEditingController signUpConfirmPassword;

  @override
  void onInit() {
    userName = TextEditingController();
    signUpEmail = TextEditingController();
    signUpPassword = TextEditingController();
    signUpConfirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    userName.dispose();
    signUpEmail.dispose();
    signUpPassword.dispose();
    signUpConfirmPassword.dispose();
    super.onClose();
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.loginScreen);
  }

  @override
  signUp() {
   Get.offNamed(AppRoute.checkEmailScreen);
  }

}
