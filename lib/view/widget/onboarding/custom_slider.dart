import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
      controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder:
          (context, i) => Column(
        children: [
          SizedBox(height: 30),
          /// title
          Text(
            onBoardingList[i].title!,
            style: TextTheme.of(context).titleLarge,
          ),
          SizedBox(height: 20),

          /// image
          Image.asset(onBoardingList[i].image!),
          SizedBox(height:i==2?50:0),

          /// text body
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextTheme.of(context).bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
