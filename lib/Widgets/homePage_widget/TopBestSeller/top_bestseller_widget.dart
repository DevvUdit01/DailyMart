import 'package:flutter/material.dart';

class TopBestsellerWidget extends StatelessWidget {
  final String imagePath;
  const TopBestsellerWidget({super.key,required this.imagePath });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
        ],
      ),
    );
  }
}