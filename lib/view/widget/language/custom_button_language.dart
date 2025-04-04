import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLanguage({super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textColor: Colors.white,
        onPressed:onPressed,
        color: AppColor.primaryColor,
        child: Text(
          textButton,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
