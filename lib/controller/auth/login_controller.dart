import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/data/data_source/remote/auth/login_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();

  goToForgetPassword();

}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find());
  @override
  login() async{
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postLoginData(email.text,password.text, );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']=="success") {
          Get.toNamed(AppRoute.homeScreen);
        }  else{
          Get.defaultDialog(title: "Error", middleText: "Email or password Not correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      // not valid
    }
  }
  showPassword() {
    isShowPassword= isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
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
