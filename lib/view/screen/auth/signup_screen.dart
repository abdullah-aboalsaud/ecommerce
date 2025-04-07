import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_already_have_account_button.dart';
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
          ).headlineLarge!.copyWith(color: AppColor.lightGrey),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: ListView(
          children: [
            SizedBox(height: 20),

            /// register now title
            CustomTextTitleAuth(text: AppStrings.registerAccount),
            SizedBox(height: 10),

            /// text under title
            CustomTextBodyAuth(text: AppStrings.completeDetails),
            SizedBox(height: 60),

            /// text field username
            CustomTextFormAuth(
              hintText: "24",
              labelText: "23",
              iconData: Icons.person_outline,
              controller: controller.userName,
            ),
            SizedBox(height: 25),

            /// text field email
            CustomTextFormAuth(
              hintText: "4",
              labelText: "6",
              iconData: Icons.email_outlined,
              controller: controller.signUpEmail,
            ),
            SizedBox(height: 25),

            /// text field password
            CustomTextFormAuth(
              hintText: "5",
              labelText: "7",
              iconData: Icons.lock_outline_rounded,
              controller: controller.signUpPassword,
            ),
            SizedBox(height: 25),

            /// confirm password field
            CustomTextFormAuth(
              hintText: "reEnterPassword",
              labelText: "confirmPassword",
              iconData: Icons.lock_outline_rounded,
              controller: controller.signUpConfirmPassword,
            ),
            SizedBox(height: 30),

            /// sign up button
            MaterialButton(
              onPressed: () {
                controller.signUp();
              },
              color: AppColor.blue,
              textColor: AppColor.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(AppStrings.signUp.tr),
            ),
            SizedBox(height: 20),

            /// sign up options
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    ImageAsset.googleLogo,
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
                    ImageAsset.faceBookLogo,
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
    );
  }
}
