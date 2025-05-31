import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/product_details_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/link_api.dart';
import 'package:ecommerce/view/widget/auth_widgets/custom_button_auth.dart';
import 'package:ecommerce/view/widget/product_details/price_and_count.dart';
import 'package:ecommerce/view/widget/product_details/sub_items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(
      ProductDetailsControllerImp(),
    );
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          Container(height: 200, color: AppColors.primaryColor),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(height: 100, color: AppColors.primaryColor),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: Get.height,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                  ),

                  /// image of item --------------------------------------------
                  Positioned(
                    top: -130,
                    right: Get.width / 8,
                    left: Get.width / 8,
                    child: Center(
                      child: Hero(
                        tag: "${controller.itemsModel.itemsId}",
                        child: CachedNetworkImage(
                          imageUrl:
                              "$linkImageItems/${controller.itemsModel.itemsImage!}",
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 200),

                  Positioned(
                    top: 130,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// title name of item--------------------------------
                          Text(
                            "${controller.itemsModel.itemsName}",
                            style: TextTheme.of(context).headlineLarge!
                                .copyWith(color: AppColors.primaryColor),
                          ),

                          PriceAndCountItems(
                            onAdd: () {},
                            onRemove: () {},
                            price: " ${controller.itemsModel.itemsPrice}",
                            count: "2",
                          ),

                          SizedBox(height: 10),

                          /// description text----------------------------------
                          Text(
                            "${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ",
                            style: TextStyle(),
                          ),
                          SizedBox(height: 10),

                          /// text color
                          Text(
                            "Color",
                            style: TextTheme.of(context).headlineLarge!
                                .copyWith(color: AppColors.primaryColor),
                          ),
                          SizedBox(height: 10),

                          /// sub items list
                          SubItemsList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(15),
        child: CustomButtonAuth(text: "Add to cart", onPressed: () {}),
      ),
    );
  }
}
