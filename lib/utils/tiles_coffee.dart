import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String image;
  const CoffeeTiles({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
