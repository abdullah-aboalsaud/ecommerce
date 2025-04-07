import 'package:ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller = Get.put(
      ForgetPasswordControllerImpl(),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "forgetPassword".tr,
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
            CustomTextTitleAuth(text: "checkEmail"),
            SizedBox(height: 10),

            /// text under title
            CustomTextBodyAuth(text: "enterEmailToVerify"),
            SizedBox(height: 60),


            /// text field email
            CustomTextFormAuth(
              hintText: "4",
              labelText: "6",
              iconData: Icons.email_outlined,
             controller: controller.email,
            ),
            SizedBox(height: 60),


            /// check button
            MaterialButton(
              onPressed: () {
                controller.goToVerifyCode();
              },
              color: AppColor.blue,
              textColor: AppColor.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text("check".tr),
            ),
            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
