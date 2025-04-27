import 'package:ecommerce/controller/home_screen_controller.dart';
import 'package:ecommerce/view/widget/home/custom_button_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : CustomButtonAppBar(
                          textbutton: controller.titleBottomAppBar[i],
                          icondata: Icons.home,
                          onPressed: () {
                            controller.changePage(i);
                          },
                          active: controller.currentPage == i ? true : false);
                }))
              ],
            )));
  }
}
