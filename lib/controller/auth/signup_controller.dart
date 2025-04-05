import 'package:ecommerce/core/constant/route_names.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  goToLogin();
}

class SignupControllerImp extends SignUpController {
  @override
  goToLogin() {
    Get.toNamed(AppRoute.loginScreen);
  }
}
