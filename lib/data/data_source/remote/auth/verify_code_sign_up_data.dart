import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/link_api.dart';


class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);
  postVerifyCodeSignUpData(String email ,String verifycode ) async {
    var response = await crud.postData(linkVerifyCodeSignUp, {
      "email" : email ,
      "verifycode" : verifycode
    });
    return response.fold((l) => l, (r) => r);
  }
}