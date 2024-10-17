import 'package:daily_mart/Config/Images.dart';
import 'package:daily_mart/Widgets/homePage_widget/AllProduct/all_products_widget.dart';
import 'package:flutter/material.dart';

class MyAllProducts extends StatelessWidget {
  const MyAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        AllProductsWidget(name: 'FreshMart', offer: '20% off on First Order',
         imagePath: AssetsImage.product1),
           AllProductsWidget(name: 'GreenGrocer', offer: '20% off on First Order',
         imagePath: AssetsImage.product2),
           AllProductsWidget(name: 'FreshMart', offer: '20% off on First Order',
         imagePath: AssetsImage.product3),
      ],
    );
  }
}