import 'package:ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce/controller/auth/reset_password_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller = Get.put(
      ResetPasswordControllerImpl(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          AppStrings.resetPassword.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: ListView(
          children: [
            SizedBox(height: 20),

            /// title of the page
            CustomTextTitleAuth(text: AppStrings.newPassword.tr),
            SizedBox(height: 10),

            /// text under title
            CustomTextBodyAuth(text: AppStrings.enterNewPasswordExplain.tr),
            SizedBox(height: 60),

            /// text field enter new password
            CustomTextFormAuth(
              hintText: AppStrings.enterNewPassword.tr,
              labelText: AppStrings.newPassword.tr,
              iconData: Icons.email_outlined,
              controller: controller.password,
            ),
            SizedBox(height: 25,),
            /// Re Enter password
            CustomTextFormAuth(
              hintText: AppStrings.reEnterPassword.tr,
              labelText:AppStrings.confirmPassword.tr,
              iconData: Icons.lock_outline_rounded,
              controller: controller.rePassword,
            ),
            SizedBox(height: 30),

            /// check button
            MaterialButton(
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
              color: AppColor.blue,
              textColor: AppColor.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(AppStrings.save.tr),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
