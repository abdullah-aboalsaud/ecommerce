import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getAllData() async {
    var response = await crud.postData(linkTest, {});
    return response.fold((l) => l, (r) => r);
  }
}
