import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {

  if (val.isEmpty) {
    return AppStrings.cantBeEmpty.tr;
  }

  if (type == AppStrings.userName) {
      if (!GetUtils.isUsername(val)) {
        return AppStrings.notValidUserName.tr;
      }
  }

  if (type == AppStrings.email) {
    if (!GetUtils.isEmail(val)) {
      return AppStrings.notValidEmail.tr;
    }
  }

  if (type == AppStrings.phone) {
    if (!GetUtils.isPhoneNumber(val)) {
      return AppStrings.notValidPhone.tr;
    }
  }

  if (val.length<min) {
    return "${AppStrings.cantBeLessThan.tr} $min";
  }
  if (val.length>max) {
    return "${AppStrings.cantBeGreaterThan.tr} $max";
  }

}
