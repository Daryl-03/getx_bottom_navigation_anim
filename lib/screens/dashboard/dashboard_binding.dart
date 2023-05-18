import 'package:get/get.dart';
import 'package:getx_bottom_navigation_anim/screens/add/add_controller.dart';
import 'package:getx_bottom_navigation_anim/screens/home/home_controller.dart';
import 'package:getx_bottom_navigation_anim/screens/messages/messages_controller.dart';
import 'package:getx_bottom_navigation_anim/screens/users/users_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<MessagesPageController>(() => MessagesPageController());
    Get.lazyPut<UsersPageController>(() => UsersPageController());
    Get.lazyPut<AddPageController>(() => AddPageController());
  }
}