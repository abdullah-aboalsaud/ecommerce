import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/view/widget/custom_app_bar.dart';
import 'package:ecommerce/view/widget/home/custom_card_home.dart';
import 'package:ecommerce/view/widget/home/customtitlehome.dart';
import 'package:ecommerce/view/widget/home/list_categories_home.dart';
import 'package:ecommerce/view/widget/home/list_items_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return  GetBuilder<HomeControllerImp>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    /// app bar ================================================
                    CustomAppBar(
                      titleAppBar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {},
                    ),

                    /// card ===================================================
                    CustomCardHome(
                      title: "A summer surprise",
                      body: "Cashback 20%",
                    ),

                    /// title categories
                    CustomTitleHome(title: "Categories"),

                    /// categories =============================================
                    ListCategoriesHome(),

                    SizedBox(height: 10),

                    /// title product for you ===================================
                    CustomTitleHome(title: "Product for you"),



                    /// items
                    ListItemsHome(),
                  ],
                ),
              ),
            ),
      );
  }
}
