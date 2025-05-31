import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments[AppStrings.itemsModel];
  }
  List subItems=[
    {"name": "red", "id": "1", "active": '0'},
    {"name": "yellow", "id": "2", "active": '1'},
    {"name": "black", "id": "3", "active": '0'}
  ];


  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
