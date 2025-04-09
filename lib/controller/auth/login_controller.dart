import 'package:ecommerce/core/constant/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  goToSignUp();

  goToForgetPassword();

  login();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formState =GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      // valid
    } else {
     // not valid
    }
  }

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
    Get.toNamed(AppRoute.forgetPasswordScreen);
  }


}
