import 'package:ecommerce/controller/auth/forget_password/reset_password_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/core/functions/valid_input.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(
      ResetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          AppStrings.resetPassword.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.darkGrey),
        ),
      ),

      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    SizedBox(height: 20),

                    /// title of the page
                    CustomTextTitleAuth(text: AppStrings.newPassword.tr),
                    SizedBox(height: 10),

                    /// text under title
                    CustomTextBodyAuth(
                      text: AppStrings.enterNewPasswordExplain.tr,
                    ),
                    SizedBox(height: 60),

                    /// text field enter new password
                    CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 3, 20, AppStrings.password);
                      },
                      hintText: AppStrings.enterNewPassword.tr,
                      labelText: AppStrings.newPassword.tr,
                      iconData: Icons.email_outlined,
                      textEditingController: controller.password,
                    ),
                    SizedBox(height: 25),

                    /// Re Enter password
                    CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 3, 20, AppStrings.password);
                      },
                      hintText: AppStrings.reEnterPassword.tr,
                      labelText: AppStrings.confirmPassword.tr,
                      iconData: Icons.lock_outline_rounded,
                      textEditingController: controller.rePassword,
                    ),
                    SizedBox(height: 30),

                    /// save button
                    MaterialButton(
                      onPressed: () {
                        controller.goToSuccessResetPassword();
                      },
                      color: AppColor.primaryColor,
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
            ),
          );
        },
      ),
    );
  }
}
