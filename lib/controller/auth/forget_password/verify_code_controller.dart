
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/data/data_source/remote/forget_password/verify_code_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
  goToResetPasswordTest();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  VerifyCodeData verifyCodeData =
  VerifyCodeData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await verifyCodeData.postVerifyCodeData(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.none;
      }
    }
    update();
  }

  @override
  goToResetPasswordTest() {
    Get.offNamed(AppRoute.resetPassword , arguments: {
      "email" : email
    });
    throw UnimplementedError();
  }


}