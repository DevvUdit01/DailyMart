import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final String name;
  const HorizontalDivider({super.key,required this.name });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
           Container(
            width: 50, 
            height: 1.5,  
            color: const Color.fromARGB(255, 178, 175, 175), 
          ),
         Text(" $name "),
         const Expanded(child: Divider(thickness: 1.5,))
        ],
      ),
    );
  }
}