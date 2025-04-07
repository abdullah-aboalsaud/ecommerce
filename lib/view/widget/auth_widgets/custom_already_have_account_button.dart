import 'package:flutter/material.dart';

class CustomAlreadyHaveAccountButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text1;
  final String text2;
  final Color color;

  const CustomAlreadyHaveAccountButton({
    super.key,
    this.onPressed,
    required this.text2, required this.color, required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
