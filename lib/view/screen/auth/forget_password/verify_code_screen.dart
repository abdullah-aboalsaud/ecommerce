import 'package:ecommerce/controller/auth/forget_password/forgetpassword_controller.dart';
import 'package:ecommerce/controller/auth/forget_password/verify_code_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/route_names.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          AppStrings.verificationCode.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColors.darkGrey),
        ),
      ),

      body: Container(
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
                borderColor: AppColors.primaryColor,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword(verificationCode);
                }, //
              ),
            ),

          ],
        ),
      ),
    );
  }
}
