import 'package:ecommerce/controller/test_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestViewScreen extends StatelessWidget {
  const TestViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("title")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<TestController>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text("${controller.data[i]['users_name']}"),
                      subtitle: Text("${controller.data[i]['users_email']}"),
                      leading: Text("${controller.data[i]['users_id']}"),
                      trailing: Text("${controller.data[i]['users_create']}"),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
