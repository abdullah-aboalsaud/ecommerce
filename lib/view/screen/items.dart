import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/data/model/items_model.dart';
import 'package:ecommerce/view/widget/custom_app_bar.dart';
import 'package:ecommerce/view/widget/items/custom_list_items.dart';
import 'package:ecommerce/view/widget/items/list_categories_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppBar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {},
            ),
            SizedBox(height: 20),
            ListCategoriesItems(),

            /// view items section
            GetBuilder<ItemsControllerImp>(builder:
                (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return CustomListItems(
                          itemsModel: ItemsModel.fromJson(
                            controller.data[index],
                          ),
                        );
                      },
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
