import 'dart:convert';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/functions/check_internet.dart';

import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    await Future.delayed(Duration(milliseconds: 500));
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkUrl), body: data);
      print("Crud->statusCode======${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        print("Crud-> responseBody========$responseBody");

        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }
}
