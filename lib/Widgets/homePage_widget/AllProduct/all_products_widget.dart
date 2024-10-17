import 'package:flutter/material.dart';

class AllProductsWidget extends StatelessWidget {
  final String name;
  final String offer;
  final String imagePath;

  const AllProductsWidget({
    super.key,
    required this.name,
    required this.offer,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width to ensure the card is responsive
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: screenWidth * 0.95, // Use 90% of the screen width
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image widget wrapped with ClipRRect for rounded corners
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity, // Take up full card width
                  height: 150, 
                  fit: BoxFit.cover, // Ensure image covers the entire area
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    
                    // Offer details
                    Text(
                      offer,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
