import 'package:ecommerce/controller/product_details_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubItemsList extends GetView<ProductDetailsControllerImp> {
  const SubItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
      children: [
        ...List.generate(controller.subItems.length, (i) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
                color: controller.subItems[i]['active']=="1"? AppColors.primaryColor:AppColors.white,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              controller.subItems[i]['name'],
              style: TextStyle(
                  color: controller.subItems[i]['active']=="1"? AppColors.white:AppColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          );
        }),
      ],
    );
  }
}
