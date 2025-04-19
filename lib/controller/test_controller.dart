import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/functions/handling_data.dart';
import 'package:ecommerce/data/data_source/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getAllData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status']=="success") {
        data.addAll(response['data']);
      }  else{
        statusRequest = StatusRequest.failure;
      }

    }  
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
