import 'package:get/get.dart';

class DashboardController extends GetxController{
  var tabIndex = 0;
  void changeTab(int index){
    tabIndex = index;
    update();
  }
}