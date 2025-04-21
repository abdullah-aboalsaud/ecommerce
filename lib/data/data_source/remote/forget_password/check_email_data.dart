import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  postCheckEmailData(String email) async {
    var response = await crud.postData(linkCheckEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
