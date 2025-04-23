import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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

  StatusRequest statusRequest = StatusRequest.none;

  LoginData loginData = LoginData(Get.find());

  MyServices myServices = Get.find();

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postLoginData(email.text, password.text,);
      print("loginController-> response['status']============ ${response['status']}");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setString(
             AppStrings.id , response['data']['users_id'].toString()); //todo please check this value in backend
          myServices.sharedPreferences.setString(
             AppStrings.userName, response['data']['users_name']);
          myServices.sharedPreferences.setString(
              AppStrings.email, response['data']['users_email']);
          myServices.sharedPreferences.setString(
              AppStrings.phone, response['data']['users_phone']);
          myServices.sharedPreferences.setString(AppStrings.step, "2");

          Get.toNamed(AppRoute.homeScreen);
        } else {
          Get.defaultDialog(
              title: "Error", middleText: "Email or password Not correct");
          statusRequest = StatusRequest.none;
        }
      }
      update();
    } else {
      // not valid
    }
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print("token=========$value");
      String? token = value;
    });
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
