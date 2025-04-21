import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postLoginData(String email ,String password) async {
    var response = await crud.postData(linkLogin, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
