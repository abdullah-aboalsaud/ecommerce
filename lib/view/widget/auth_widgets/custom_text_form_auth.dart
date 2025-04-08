import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormAuth extends StatefulWidget {
  final String hintText;
  final String labelText;
  final IconData? iconData;
  final TextEditingController? controller;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    this.iconData,
    this.controller,
  });

  @override
  State<CustomTextFormAuth> createState() => _CustomTextFormAuthState();
}

class _CustomTextFormAuthState extends State<CustomTextFormAuth> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {}); // rebuild to update label/icon color
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isFocused = _focusNode.hasFocus;

    return TextFormField(
      focusNode: _focusNode,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(widget.labelText,
            style: TextStyle(
              color: isFocused ? AppColor.blue : AppColor.lightGrey,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        suffixIcon: Icon(
          widget.iconData,
          color: isFocused ? AppColor.blue : AppColor.lightGrey,
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

// import 'package:ecommerce/core/constant/color.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomTextFormAuth extends StatelessWidget {
//   final String hintText;
//   final String labelText;
//   final IconData? iconData;
//   final TextEditingController? textEditingController;
//   const CustomTextFormAuth({super.key, required this.hintText,  required this.labelText, this.textEditingController, this.iconData});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: textEditingController,
//       decoration: InputDecoration(
//         hintText: hintText.tr,
//         hintStyle: TextStyle(fontSize: 14),
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         label: Container(
//           margin: EdgeInsets.symmetric(horizontal: 10),
//           child: Text(labelText!.tr),
//         ),
//         contentPadding: EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 30,
//         ),
//         suffixIcon: Icon(iconData,color: AppColor.lightGrey,),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(40),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.blue,width:2.0),
//           borderRadius: BorderRadius.circular(40),
//
//         ),
//       ),
//     );
//   }
// }
