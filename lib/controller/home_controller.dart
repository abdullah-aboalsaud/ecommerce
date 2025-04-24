import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/home_data.dart';
import 'package:get/get.dart';

abstract class  HomeController extends GetxController {
  initialData()  ;
  getData() ;

}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  HomeData homeData = HomeData(Get.find());

  // List data = [];
  List categories = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username") ;
    id = myServices.sharedPreferences.getString("id") ;
  }

  @override
  void onInit() {
    getData() ;
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getHomeData();
    print("HomeControllerImp->getData()========== $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure ;
      }
    }
    update();
  }
}