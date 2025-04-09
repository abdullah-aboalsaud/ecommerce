import 'package:ecommerce/controller/auth/success_sign_up_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller = Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Success \nSign Up", style: TextStyle(fontSize: 40)),
            Spacer(),
            /// go to login Button
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: AppStrings.goToLogin.tr,
                onPressed: () {
                controller.goToLogin();
                },
              ),
            ),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}
