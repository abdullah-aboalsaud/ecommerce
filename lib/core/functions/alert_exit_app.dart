import 'dart:io';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp<bool>() {
  return Get.defaultDialog(
    title: "Exit App",
    middleText: "Are you sure you want to exit?",
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Cancel",style: TextStyle(color: AppColor.primaryColor),),
          ),
          SizedBox(),
          TextButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("Yes",style: TextStyle(color: AppColor.primaryColor),),
          ),
        ],
      ),


    ],
  );
}
