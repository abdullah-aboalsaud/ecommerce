import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_signup_or_login.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "8".tr,
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
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 20),

            /// welcome title
            CustomTextTitleAuth(text: "2"),
            SizedBox(height: 10),

            /// text under title
            CustomTextBodyAuth(text: "3"),
            SizedBox(height: 60),

            /// text field email
            CustomTextFormAuth(
              hintText: "4",
              labelText: "6",
              iconData: Icons.email_outlined,
            ),
            SizedBox(height: 25),

            /// text field password
            CustomTextFormAuth(
              hintText: "5",
              labelText: "7",
              iconData: Icons.lock_outline_rounded,
            ),
            SizedBox(height: 20),

            /// forget Password
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "20".tr,
                textAlign: TextAlign.end,
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 30),

            /// sign in button
            MaterialButton(
              onPressed: () {
                // Handle continue button press
              },
              color: AppColor.blue,
              textColor: AppColor.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text("8".tr),
            ),
            SizedBox(height: 50),

            /// sign in options
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
            SizedBox(height: 10),

            /// don't have account
            CustomTextSignupOrLogin(
              leadingText: "19".tr,
              clickableText: "18".tr,
              onTap: () {
                controller.goToSignUp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
