import 'package:daily_mart/Features/home_page/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

    List<PersistentBottomNavBarItem> navBarsItems() {
    return [
     buildPersistentBottomNavBarItem(Icons.home),
     buildPersistentBottomNavBarItem(Icons.shopping_cart_outlined),
     buildPersistentBottomNavBarItem(Icons.card_travel),
    ];
  }

    List<Widget> buildScreens() {
    return [
           HomePageView(),
            SizedBox(),
      const SizedBox(),
    ];
  }
}

buildPersistentBottomNavBarItem(IconData icon1){
  return PersistentBottomNavBarItem(
      icon:Icon(icon1,size: 30,color: Colors.white,),
      activeColorSecondary: Colors.white,
       inactiveColorSecondary: const Color(0xFFA7A6A6),
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.blue,
      
    );
}
