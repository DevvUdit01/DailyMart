import 'package:daily_mart/Config/Images.dart';
import 'package:daily_mart/Widgets/homePage_widget/AllProduct/my_all_products.dart';
import 'package:daily_mart/Widgets/homePage_widget/TopBestSeller/my_top_best_seller.dart';
import 'package:daily_mart/Widgets/homePage_widget/divider/horizontal_divider.dart';
import 'package:daily_mart/Widgets/homePage_widget/offers/my_offers.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 5),
            Text('Krishna Vihar Colony'),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notifications,size: 30,), onPressed: () {}),
          IconButton(icon: const Icon(Icons.account_circle,size: 35,), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search daily needs...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            // Banner Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(AssetsImage.banner), // Replace with your image path
            ),
            HorizontalDivider(name: "Offers"),
            // offers
            MyOffers(),

            // Top BestSellers Section
            HorizontalDivider(name: "Our Top BestSellers"),

            MyTopBestSeller(),
            
            //add  top seller section
            HorizontalDivider(name: "Top Sellers"),

            // All Products Section
           HorizontalDivider(name: "All Products"),

            _buildSortAndFilterOptions(),
             MyAllProducts(),

            const SizedBox(height: 10), // Add spacing at the bottom
          ],
        ),
      ),
    );
  }  

  Widget _buildSortAndFilterOptions() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Sort'),
          Row(
            children: [
              Icon(Icons.filter_list),
              SizedBox(width: 5),
              Text('Rating 4.5+'),
            ],
          ),
          Text('Price: Low to High'),
        ],
      ),
    );
  }
}
