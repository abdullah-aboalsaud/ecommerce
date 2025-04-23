import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;
  
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){
    if (myServices.sharedPreferences.getString(AppStrings.step)=="2") {
      return RouteSettings(name: AppRoute.homeScreen);
    }

    if (myServices.sharedPreferences.getString(AppStrings.step)=="1") {
      return RouteSettings(name: AppRoute.loginScreen);
    }

    return null;
  }

}
