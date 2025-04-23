import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  String? userName;
  String? id;
  String? email;

  @override
  initialData() {
    userName = myServices.sharedPreferences.getString(AppStrings.userName);
    id = myServices.sharedPreferences.getString(AppStrings.id);
    email = myServices.sharedPreferences.getString(AppStrings.email);
    print("userName=========$userName");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
