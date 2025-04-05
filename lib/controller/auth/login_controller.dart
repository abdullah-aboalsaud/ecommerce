import 'package:ecommerce/core/constant/route_names.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  goToSignUp();
}

class LoginControllerImp extends LoginController {

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }


}
