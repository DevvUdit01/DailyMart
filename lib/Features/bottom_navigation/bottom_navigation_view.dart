import 'package:daily_mart/Features/bottom_navigation/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


// ignore: must_be_immutable
class BottomNavigationView extends GetView<BottomNavigationController> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());
  BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SizedBox(
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: controller.buildScreens(),
          items: controller.navBarsItems(),
          navBarStyle: NavBarStyle.style3,
          confineToSafeArea: true,
            backgroundColor: Colors.black, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
        ),
      ),
    );
  }
}
