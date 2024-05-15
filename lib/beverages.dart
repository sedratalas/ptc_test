import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/AddProductDialog.dart';
import 'Model/product.dart';
import 'product_item.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> products = [
    Product(
      title: 'Diet Coke',
      subtitle: '355ml,\nPrice',
      price: '\$1.99',
      image: 'assets/images/coke.png',
    ),
    Product(
      title: 'Sprite Can',
      subtitle: '355ml,\nPrice',
      price: '\$1.50',
      image: 'assets/images/sprite.png',
    ),
  Product(
         title:"Apple & Grape\nJuice",
         subtitle: "2L,\nprice",
         price: "\$5.99",
         image: "assets/images/apple.png",
    ),
   Product(
      title:"Orenge Juice",
      subtitle: "325ml,\nprice",
      price: "\$5.99",
      image: "assets/images/orange.jpg",
     ),
     Product(
       title:"Coca Cola Can",
       subtitle: "325ml,\nprice",
       price: "\$4.99",
       image: "assets/images/coka.png",
     ),
    Product(
      title:"Pepsi Can ",
       subtitle: "330ml,\nprice",
      price: "\$4.99",
       image: "assets/images/pepsi.png",
     ),
  ];

  void _addProduct(Product product) {
    setState(() {
      products.add(product);
    });
  }

  void _showAddProductDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return AddProductDialog(onAddProduct: _addProduct);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Beverages',
        style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF181725),
    fontFamily: 'Poppins',
        ),
        ),
        leading: IconButton(  onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff181725),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(17),
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: _showAddProductDialog,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
        ),
      ),
    );
  }
}




