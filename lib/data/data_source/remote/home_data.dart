import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getHomeData() async {
    var response = await crud.postData(linkHome, {});
    return response.fold((l) => l, (r) => r);
  }
}