import 'package:ecommerce/controller/auth/success_reset_password_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerIml controller = Get.put(SuccessResetPasswordControllerIml());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Success reset password", style: TextStyle(fontSize: 40),textAlign: TextAlign.center,),
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
