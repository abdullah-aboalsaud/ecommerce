
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int i);
}

class OnBoardingControllerImp extends OnBoardingController{
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if(currentPage== onBoardingList.length) {
      myServices.sharedPreferences.setString(AppStrings.step, "1");
     Get.offAllNamed(AppRoute.loginScreen);
    }
    pageController.animateToPage(currentPage, duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int i) {
    currentPage = i;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
  
  // @override
  // void onClose() {
  //   pageController.dispose();
  //   super.onClose();
  // }

}