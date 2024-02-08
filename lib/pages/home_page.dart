import 'dart:core';
import 'package:coffee_ui/utils/coffee_type.dart';
import 'package:coffee_ui/utils/tiles_coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    [
      'cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      true,
    ],
    [
      'Strungi',
      false,
    ],
  ];

  void coffeeTypeSelected(index) {
    setState(() {
      for( int i= 0; i < coffeeType.length; i ++ ){
        coffeeType[i][0] = false;
      }
      coffeeType[index][0] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              'Find the perfect cup for your morning ritual',
              style: GoogleFonts.zeyada(fontSize: 33),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: 'Coffee  search..'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: ListView.builder(
                itemCount: coffeeType.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: (){
                      coffeeTypeSelected(index);
                    },
                  );
                }),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CoffeeTiles(
                image: 'Images/Coffee1.jpg',
              ),
              CoffeeTiles(
                image: 'Images/Coffee 3.jpg',
              ),
              CoffeeTiles(
                image: 'Images/Coffee 4.jpg',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
