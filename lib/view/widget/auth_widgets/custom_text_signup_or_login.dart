import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignupOrLogin extends StatelessWidget {
  final String leadingText;
  final String clickableText;
  final  void Function()? onTap;

  const CustomTextSignupOrLogin({super.key, required this.leadingText, required this.clickableText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leadingText),
        InkWell(
          onTap: onTap,
          child: Text(
            clickableText,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
