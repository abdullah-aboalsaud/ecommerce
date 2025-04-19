import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/core/functions/valid_input.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_already_have_account_button.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.signUp.tr,
          style: TextTheme.of(
            context,
          ).headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              SizedBox(height: 20),

              /// register now title
              CustomTextTitleAuth(text: AppStrings.registerAccount.tr),
              SizedBox(height: 10),

              /// text under title
              CustomTextBodyAuth(text: AppStrings.completeDetails.tr),
              SizedBox(height: 60),

              /// text field username
              CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, AppStrings.userName);
                },
                hintText: AppStrings.enterUserName.tr,
                labelText: AppStrings.userName.tr,
                iconData: Icons.person_outline,
                controller: controller.userName,
                inputType: TextInputType.name,
              ),
              SizedBox(height: 25),

              /// text field email
              CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, AppStrings.email);
                },
                hintText: AppStrings.enterEmail.tr,
                labelText: AppStrings.email.tr,
                iconData: Icons.email_outlined,
                controller: controller.signUpEmail,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25),

              /// text field password
              GetBuilder<SignupControllerImp>(
                builder:
                    (controller) =>
                        CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 5, 20, AppStrings.password);
                      },
                      hintText: AppStrings.enterPassword.tr,
                      labelText: AppStrings.password.tr,
                      iconData: Icons.lock_outline_rounded,
                      controller: controller.signUpPassword,
                      inputType: TextInputType.visiblePassword,
                      isObscure: controller.isShowPassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                    ),
              ),
              SizedBox(height: 25),

              /// confirm password field
            GetBuilder<SignupControllerImp>(builder: (controller)=>  CustomTextFormAuth(
              valid: (val) {
                return validInput(val!, 5, 20, AppStrings.confirmPassword);
              },
              hintText: AppStrings.reEnterPassword.tr,
              labelText: AppStrings.confirmPassword.tr,
              iconData: Icons.lock_outline_rounded,
              controller: controller.signUpConfirmPassword,
              isObscure: controller.isShownConfirmPassword,
              onTapIcon: () {
                controller.showConfirmPassword();
              },
            )),
              SizedBox(height: 30),

              /// sign up button
              CustomButtonAuth(
                text: AppStrings.signUp.tr,
                onPressed: () {
                  controller.signUp();
                },
              ),
              SizedBox(height: 20),

              /// sign up options
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      AppImageAsset.googleLogo,
                      width: 60,
                      height: 60,
                    ),
                    // Replace with your asset path
                    onPressed: () {
                      // Handle Google sign-in
                    },
                  ),

                  IconButton(
                    icon: SvgPicture.asset(
                      AppImageAsset.faceBookLogo,
                      width: 60,
                      height: 60,
                    ),
                    // Replace with your asset path
                    onPressed: () {
                      // Handle Facebook sign-in
                    },
                  ),
                ],
              ),

              /// already have account
              CustomAlreadyHaveAccountButton(
                text1: AppStrings.alreadyHaveAccount.tr,
                text2: AppStrings.signIn.tr,
                color: AppColor.blue,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
