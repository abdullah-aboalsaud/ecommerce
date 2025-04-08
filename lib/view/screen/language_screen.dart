import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/core/localization/change_locale.dart';
import 'package:ecommerce/view/widget/language_widgets/custom_button_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.chooseLanguage.tr, style: TextTheme.of(context).titleLarge),
            SizedBox(height: 20),

            /// arabic button
            CustomButtonLanguage(textButton: "العربية", onPressed: () {
              controller.changeLanguage("ar");
              Get.toNamed(AppRoute.onBoarding);
            }),

            /// English button
            CustomButtonLanguage(textButton: "English", onPressed: () {
              controller.changeLanguage("en");
              Get.toNamed(AppRoute.onBoarding);
            }),

          ],
        ),
      ),
    );
  }
}
