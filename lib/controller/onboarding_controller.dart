
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int i);
}

class OnBoardingControllerImp extends OnBoardingController{
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    pageController.animateToPage(currentPage, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
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