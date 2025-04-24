import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData? iconData;
  final TextEditingController? textEditingController;
  final String? Function(String?) valid;
  final TextInputType? inputType;
  final bool? isObscure;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    this.iconData,
    this.textEditingController,
    required this.valid,
    this.inputType,
    this.isObscure,
    this.onTapIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      controller: textEditingController,
      keyboardType:inputType ,
      obscureText:  isObscure==true?true:false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            labelText,
            style: TextStyle(color: AppColors.grey),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        suffixIcon: InkWell(onTap: onTapIcon,
          child: Icon(
            iconData,
            color: AppColors.grey,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}