import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  postResetPasswordData(String email ,String password) async {
    var response = await crud.postData(linkResetPassword, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
