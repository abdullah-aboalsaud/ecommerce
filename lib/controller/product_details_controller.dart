import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments[AppStrings.itemsModel];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
