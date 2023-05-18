
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../widgets/custom_animated_bottom_bar.dart';
import '../add/add_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../users/users_page.dart';
import 'dashboard_controller.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller){
        return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text("Custom Animated Bottom Navigation Bar"),
              backgroundColor: Colors.green[200],
            ),
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomePage(),
                  UsersPage(),
                  MessagesPage(),
                  AddPage(),
                ],
              ),
            ),
            bottomNavigationBar: CustomAnimatedBottomBar(
              containerHeight: 70,
              backgroundColor: Colors.white,
              selectedIndex: controller.tabIndex,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              onItemSelected: controller.changeTab,
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text('Home'),
                  activeColor: Colors.green,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.people),
                  title: Text('Users'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text(
                    'Messages ',
                  ),
                  activeColor: Colors.pink,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('Settings'),
                  activeColor: Colors.blue,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
              ],
            )
        );
      }
    );
  }
}