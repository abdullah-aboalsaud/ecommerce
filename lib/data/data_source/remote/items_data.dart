
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getItemsData(String id) async {
    var response = await crud.postData(linkItems ,{});///{"id" : id.toString()}
    return response.fold((l) => l, (r) => r);
  }
}