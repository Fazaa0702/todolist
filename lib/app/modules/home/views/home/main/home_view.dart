import 'package:flutter/material.dart';

import 'package:get/get.dart';
//import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:latihan/app/modules/home/controllers/bottom_navbar_controller.dart';

import '../../../controllers/home_controller.dart';
import '../section/home_section.dart';
import '../../todo/main/todo.dart';

class HomeView extends GetView<HomeController> {
  final BottomNavbarController _controller = Get.put(BottomNavbarController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('To Do List'),
          ),
          body: Obx(() {
            return IndexedStack(
              index: _controller.selectedIndex.value,
              children: [
                HomeSection(),
                Todo(),
              ],
            );
          }),
          bottomNavigationBar: Obx(() {
            return BottomNavigationBar(
              selectedItemColor: Colors.blue,
              currentIndex: _controller.selectedIndex.value,
              onTap: _controller.onItemTapped,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add), label: "Add List"),
              ],
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
              mouseCursor: MouseCursor.uncontrolled,
            );
          }),
        ));
  }
}
