import 'package:flutter/material.dart';
import 'package:ptc_test/components/CustomButton.dart';

import 'components/CheckoutBottomSheet.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  final List<Map<String, dynamic>> _cartItems = [
    {'name': 'Bell Pepper Red', 'quantity': 1, 'price': 4.99, 'image': 'assets/images/veg1.png','subtitle':'1kg, price'},
    {'name': 'Egg Chicken Red', 'quantity': 1, 'price': 1.99, 'image': 'assets/images/veg2.png','subtitle':'4pcs, price'},
    {'name': 'Organic Bananas', 'quantity': 1, 'price': 3.00, 'image': 'assets/images/veg3.png','subtitle':'12kg, price'},
    {'name': 'Ginger', 'quantity': 1, 'price': 2.99, 'image': 'assets/images/veg4.png','subtitle':'250g, price'},
  ];

  double get _totalPrice {
    return _cartItems.fold(0.0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  void _incrementQuantity(int index) {
    setState(() {
      _cartItems[index]['quantity']++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (_cartItems[index]['quantity'] > 1) {
        _cartItems[index]['quantity']--;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }


  void _showCheckout() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Check_out_sheet(totalCost: _totalPrice);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF181725),
            fontFamily: 'Gilroy-Bold',
            height: 1.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child:ListView.builder(
              itemCount: _cartItems.length ,
              itemBuilder: (context, index) {
                final itemIndex = index ;
                final item = _cartItems[itemIndex];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20,top: 5),
                      child: Divider(height: 1,color: Color(0xffE2E2E2)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Row(
                        children: [
                          Image.asset(item['image'], width: 150, height: 150),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item['name'],style: TextStyle(
                                          fontSize: 16.0,
                                          color: Color(0xFF181725),
                                          fontFamily: 'Gilroy-Bold',
                                          fontWeight: FontWeight.w600,
                                        ),
                                        ),
                                        Text(item['subtitle'].toString(),style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color(0xFF7C7C7C),
                                          fontFamily: 'Gilroy-Medium',
                                        ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox(width: 10,)),
                                    IconButton(
                                      icon: Icon(Icons.close,color: Color(0xffB3B3B3),),
                                      onPressed: () => _removeItem(index),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffE2E2E2),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () => _decrementQuantity(index),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(item['quantity'].toString()),
                                    SizedBox(width: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffE2E2E2),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.add,color: Colors.green,),
                                        onPressed: () => _incrementQuantity(index),
                                      ),
                                    ),
                                    Expanded(child: SizedBox(width: 10,)),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        '${item['price'].toStringAsFixed(2)} \$',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Color(0xFF181725),
                                          fontFamily: 'Gilro',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              onPressed: _showCheckout,
              text: 'Go to Checkout (\$${_totalPrice.toStringAsFixed(2)})',
              ),
            ),

        ],
      ),
    );
  }
}