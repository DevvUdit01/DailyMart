import 'package:daily_mart/Config/Images.dart';
import 'package:daily_mart/Widgets/homePage_widget/TopBestSeller/top_bestseller_widget.dart';
import 'package:flutter/material.dart';

class MyTopBestSeller extends StatelessWidget {
  const MyTopBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:const [
          TopBestsellerWidget(imagePath: AssetsImage.bestSeller1),
          TopBestsellerWidget( imagePath: AssetsImage.bestSeller2),
          TopBestsellerWidget(imagePath: AssetsImage.bestSeller3),
          TopBestsellerWidget(imagePath: AssetsImage.bestSeller4),
        ],
      ),
    );
  }
}