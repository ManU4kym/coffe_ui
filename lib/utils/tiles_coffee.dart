import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String image;
  const CoffeeTiles({super.key, required this.image, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.grey,
        ),
        child: Column(children:[
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(image),
        ),
        ],
        ),
      ),
    );
  }
}
