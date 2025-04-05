import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;
  const CustomTextBodyAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text.tr,
        textAlign: TextAlign.center,
        style: TextTheme.of(context).bodyMedium,
      ),
    );
  }
}
