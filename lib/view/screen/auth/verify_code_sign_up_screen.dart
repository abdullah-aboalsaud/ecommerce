import 'package:ecommerce/controller/auth/forget_password/forgetpassword_controller.dart';
import 'package:ecommerce/controller/auth/forget_password/verify_code_controller.dart';
import 'package:ecommerce/controller/auth/verify_code_sign_up_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUpScreen extends StatelessWidget {
  const VerifyCodeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(
      VerifyCodeSignUpControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          AppStrings.verificationCode.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.darkGrey),
        ),
      ),

      body: GetBuilder<VerifyCodeSignUpControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: ListView(
                children: [
                  SizedBox(height: 20),

                  /// title of the page
                  CustomTextTitleAuth(text: AppStrings.checkCode.tr),
                  SizedBox(height: 10),

                  /// text under title
                  CustomTextBodyAuth(text: AppStrings.enterDigitCode.tr),
                  SizedBox(height: 60),

                  /// OTP field
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: OtpTextField(
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: AppColor.primaryColor,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every text field is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, //
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
