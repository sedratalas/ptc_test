import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'beverages.dart';

class categoryItem extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  final Color borderColor;

  const categoryItem({
    Key? key,
    required this.name,
    required this.image,
    required this.color,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:(){ Get.to(ProductListScreen());},
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                height: 100,
                width: 100,
              ),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF181725),
                  fontFamily: 'Poppins',
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}