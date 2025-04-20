import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/data/data_source/remote/auth/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  goToLogin();

  signUp();
  showPassword();
  showConfirmPassword();
}

class SignupControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
   StatusRequest? statusRequest;
  
  SignUpData signUpData = SignUpData(Get.find());

  @override
  signUp() async{
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signUpData.postData(userName.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']=="success") {

            Get.offNamed(AppRoute.verifyCodeSignUpScreen);

        }  else{
          Get.defaultDialog(title: "Error", middleText: response['message']);
          statusRequest = StatusRequest.failure;
        }

      }
      update();

    } else {
      // not valid
    }
  }

  bool isShowPassword = true;
  bool isShownConfirmPassword = true;
  @override
  showPassword() {
    isShowPassword= isShowPassword == true ? false : true;
    update();
  }
  @override
  showConfirmPassword(){
    isShownConfirmPassword= isShownConfirmPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.onClose();
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.loginScreen);
  }


}
