import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/image_asset.dart';
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
          "18".tr,
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
            CustomTextTitleAuth(text: "21"),
            SizedBox(height: 10),

            /// text under title
            CustomTextBodyAuth(text: "22"),
            SizedBox(height: 60),

            /// text field username
            CustomTextFormAuth(
              hintText: "24",
              labelText: "23",
              iconData: Icons.person_outline,
            ),
            SizedBox(height: 25),

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
            SizedBox(height: 25),

            CustomTextFormAuth(
              hintText: "26",
              labelText: "25",
              iconData: Icons.lock_outline_rounded,
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
              child: Text("18".tr),
            ),
            SizedBox(height: 20),

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

            /// don't have account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("27".tr),
                TextButton(
                  onPressed: () {
                    controller.goToLogin();
                  },
                  child: Text(
                    "8".tr,
                    style: TextStyle(
                      color: AppColor.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
