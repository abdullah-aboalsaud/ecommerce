import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/app_sizes.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/core/functions/alert_exit_app.dart';
import 'package:ecommerce/core/functions/valid_input.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_signup_or_login.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.signIn.tr,
          style: TextTheme.of(
            context,
          ).headlineLarge!.copyWith(color: AppColors.grey),
        ),
      ),

      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (didPop) return;
          alertExitApp();
        },

        child: GetBuilder<LoginControllerImpl>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formState,
                  child: ListView(
                    children: [
                      SizedBox(height: 20),

                      /// welcome title
                      CustomTextTitleAuth(text: AppStrings.welcomeBack.tr),
                      SizedBox(height: 10),

                      /// text under title
                      CustomTextBodyAuth(text: AppStrings.signInPrompt.tr),
                      SizedBox(height: 60),

                      /// text field email
                      CustomTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 100, AppStrings.email);
                        },
                        hintText: AppStrings.enterEmail.tr,
                        labelText: AppStrings.email.tr,
                        iconData: Icons.email_outlined,
                        textEditingController: controller.email,
                        inputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 25),

                      /// text field password
                      GetBuilder<LoginControllerImpl>(
                        builder:
                            (controller) => CustomTextFormAuth(
                              valid: (val) {
                                return validInput(
                                  val!,
                                  5,
                                  30,
                                  AppStrings.password,
                                );
                              },
                              hintText: AppStrings.enterPassword.tr,
                              labelText: AppStrings.password.tr,
                              iconData: Icons.lock_outline_rounded,
                              textEditingController: controller.password,
                              isObscure: controller.isShowPassword,
                              onTapIcon: () {
                                controller.showPassword();
                              },
                            ),
                      ),
                      SizedBox(height: 20),

                      /// forget Password
                      InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            AppStrings.forgetPassword.tr,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      /// sign in button
                      MaterialButton(
                        onPressed: () {
                          controller.login();
                        },
                        color: AppColors.primaryColor,
                        textColor: AppColors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppSizes.buttonCornerRadius,
                          ),
                        ),
                        child: Text(AppStrings.signIn.tr),
                      ),
                      SizedBox(height: 50),

                      /// sign in options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              AppImages.googleLogo,
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
                              AppImages.faceBookLogo,
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
                      SizedBox(height: 10),

                      /// don't have account
                      CustomTextSignupOrLogin(
                        leadingText: AppStrings.dontHaveAccount.tr,
                        clickableText: AppStrings.signUp.tr,
                        onTap: () {
                          controller.goToSignUp();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
