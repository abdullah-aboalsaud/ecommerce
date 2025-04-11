import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  goToLogin();

  signUp();
}

class SignupControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController signUpEmail;
  late TextEditingController signUpPassword;
  late TextEditingController signUpConfirmPassword;
  bool isShowPassword = true;
  bool isShownConfirmPassword = true;
  showPassword() {
    isShowPassword= isShowPassword == true ? false : true;
    update();
  }
  showConfirmPassword(){
    isShownConfirmPassword= isShownConfirmPassword == true ? false : true;
    update();
  }

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
    var formData = formState.currentState;
    if (formData!.validate()) {
      // valid
      Get.offNamed(AppRoute.verifyCodeSignUpScreen);
    } else {
      // not valid
    }
  }
}
