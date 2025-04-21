import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';

class VerifyCodeData {
  Crud crud;
  VerifyCodeData(this.crud);

  postVerifyCodeData(String email ,String verifycode) async {
    var response = await crud.postData(linkVerifyCode, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
