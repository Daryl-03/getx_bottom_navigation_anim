import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation_anim/screens/add/add_controller.dart';


class UsersPage extends StatelessWidget {
  final AddPageController addPageController = Get.put(AddPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Users Page",
                style: TextStyle(fontSize: 20),
              ),
              const Divider(),
              Obx(() => Text(
                "Count: ${addPageController.count}",
                style: TextStyle(fontSize: 20),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
