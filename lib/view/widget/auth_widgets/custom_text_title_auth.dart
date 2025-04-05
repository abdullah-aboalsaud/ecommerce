import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text;
  const CustomTextTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return    Text(
      text.tr,
      textAlign: TextAlign.center,
      style: TextTheme.of(context).headlineMedium,
    );
  }
}
