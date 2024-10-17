
import 'package:daily_mart/Config/Images.dart';
import 'package:daily_mart/Widgets/homePage_widget/offers/offer_widget.dart';
import 'package:flutter/material.dart';

class MyOffers extends StatelessWidget {
  const MyOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
              padding: EdgeInsets.all(8.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OfferWidget(title: "Health",imagePath: AssetsImage.offer1),
                  OfferWidget(title: "Grocery",imagePath: AssetsImage.offer2),
                  OfferWidget(title: "Coupons", imagePath: AssetsImage.offer3),
                  OfferWidget(title: "Others",imagePath: AssetsImage.offer4),
                ],
              ),
            );
  }
}