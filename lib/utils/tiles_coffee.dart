import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTiles extends StatelessWidget {
  final String image;
  const CoffeeTiles({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,  bottom: 0),
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latte',
                    style: GoogleFonts.aboreto(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'with Almond Milk',
                    style: GoogleFonts.akayaKanadaka(
                        color: Colors.grey[500], fontSize: 16),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$5.00'),
                Icon(
                  Icons.add,
                  color: Colors.orange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
