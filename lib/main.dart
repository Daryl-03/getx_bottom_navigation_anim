import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/dashboard/dashboard.dart';
import 'screens/dashboard/dashboard_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => DashBoard(),
          binding: DashboardBinding(),
        ),
        // GetPage(name: "/home", page: () => const HomePage()),
        // GetPage(name: "/users", page: () => const UsersPage()),
        // GetPage(name: "/messages", page: () => const MessagesPage()),
      ],
    );
  }
}
