import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_controller.dart';

class AddPage extends GetView<AddPageController> {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                controller.count.toString(),
              )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.redAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: Text("Increase"),
                onPressed: controller.increment,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
