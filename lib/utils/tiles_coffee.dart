import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  const CoffeeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 25, bottom: 25),
      child: Image(
        image: AssetImage('Images/Coffee1.jpg'),
      )
    );
  }
}
