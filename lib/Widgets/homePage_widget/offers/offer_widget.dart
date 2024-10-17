import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  const OfferWidget({super.key,required this.title,required this.imagePath});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green.shade100,
          child: Image.asset(imagePath),
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}