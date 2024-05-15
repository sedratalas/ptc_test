import 'dart:io';

import 'package:flutter/material.dart';

import 'Model/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173.32,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE2E2E2),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              (product.image),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.title,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF181725),
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7C7C7C),
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7C7C7C),
                    fontFamily: 'Poppins',
                  ),
                ),
                Expanded(child: SizedBox(width: 10)),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

