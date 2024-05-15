import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/category_item.dart';


class ProductGrid extends StatefulWidget {
  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {


  final List<Map<String, dynamic>> products = [
    {"name": "Fresh Fruits\n & Vegetable", "image": "assets/images/pngfuel 7.png"},
    {"name": "Cooking Oil \n& Ghee", "image": "assets/images/pngfuel 8.png"},
    {"name": "Meat & Fish", "image": "assets/images/pngfuel 9.png"},
    {"name": "Bakery & Snacks", "image": "assets/images/pngfuel 6.png"},
    {"name": "Dairy & Eggs", "image": "assets/images/pngfuel.png"},
    {"name": "Beverages", "image": "assets/images/pngfuel 5.png"},
  ];

  final List<Color> colors = [

    Color(0xffeef7f1),
    Color(0xfffef6ed),
    Color(0xfffde8e4),
    Color(0xfff4ebf7),
    Color(0xFFfff8e5),
    Color(0xFFedf7fc),

  ];
  final List<Color> borderColors = [
    Color(0xffa3d5ab),
    Color(0xfff5c8a0),
    Color(0xfff4a8a4),
    Color(0xffd5b4e0),
    Color(0xffffd67f),
    Color(0xffaedaf2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text(
          'Find Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xFF181725),
            fontFamily: 'Poppins',
            height: 1.0,
          ),
        ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
            ),
            itemCount: products.length ,
            itemBuilder: (BuildContext context, int index) {
              return categoryItem(
                name: products[index]['name'],
                image: products[index]['image'],
                  color: colors[index % colors.length],
                 borderColor: borderColors[index % borderColors.length],

              );
            },
          ),
        ),
      ),

    );
  }
}
