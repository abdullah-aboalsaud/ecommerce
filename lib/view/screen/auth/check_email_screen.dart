import 'package:ecommerce/controller/auth/forget_password/forgetpassword_controller.dart';
import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/valid_input.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller = Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          AppStrings.checkEmail.tr,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              SizedBox(height: 20),

              /// title of the page
              CustomTextTitleAuth(text: AppStrings.checkEmail.tr),
              SizedBox(height: 10),

              /// text under title
              CustomTextBodyAuth(text: AppStrings.enterEmailToVerify.tr),
              SizedBox(height: 60),

              /// text field email
              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 100, AppStrings.email);
                },
                hintText: AppStrings.enterEmail.tr,
                labelText: AppStrings.email.tr,
                iconData: Icons.email_outlined,
                textEditingController: controller.email,
              ),
              SizedBox(height: 60),

              /// check button
              MaterialButton(
                onPressed: () {
                  controller.checkEmail();
                },
                color: AppColor.primaryColor,
                textColor: AppColor.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(AppStrings.check.tr),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
