import 'package:ecommerce/core/constant/app_strings.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Success \nSign Up", style: TextStyle(fontSize: 40)),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: AppStrings.goToLogin.tr,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
