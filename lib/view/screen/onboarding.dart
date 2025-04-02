import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/view/widget/onBoarding/custom_button.dart';
import 'package:ecommerce/view/widget/onBoarding/custom_slider.dart';
import 'package:ecommerce/view/widget/onBoarding/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// slider page
            Expanded(flex: 4, child: CustomSliderOnboarding()),
            /// controller
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  /// dots under the image
                  DotControllerOnBoarding(),
                  Spacer(),
                  /// continue button
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
