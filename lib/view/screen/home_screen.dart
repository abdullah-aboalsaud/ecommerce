import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/link_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: GetBuilder<HomeControllerImp>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            /// search bar =====================================
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: AppColors.primaryColor,
                                ),
                                hintText: "Find Product",
                                hintStyle: const TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: AppColors.tertiaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),

                          /// notification icon ================================
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.tertiaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 60,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_active_outlined,
                                size: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const ListTile(
                              title: Text(
                                "A summer surprise",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "Cashback 20%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -20,
                            right: -20,
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(160),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// categories =============================================
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        separatorBuilder:
                            (context, index) => const SizedBox(width: 10),
                        itemCount: controller.categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 70,
                                width: 70,
                                child: SvgPicture.network(
                                  "$linkImageCategories/${controller.categories[index]['categories_image']}",
                                ),
                              ),

                              /// category name ================================
                              Text(
                                "${controller.categories[index]['categories_name']}",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// text product for you ===================================
                    const Text(
                      "Product for you",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return Stack(
                            children: [
                              Container(
                                padding:  EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                margin:  EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Image.asset(
                                  "assets/images/phone.png",
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 150,
                                width: 200,
                              ),
                              const Positioned(
                                left: 10,
                                child: Text(
                                  "Laptop Surface Go 2",
                                  style: TextStyle(
                                    color: AppColors.textDark,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
