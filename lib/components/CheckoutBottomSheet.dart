import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../order_accepted.dart';
import 'CustomButton.dart';

 class Check_out_sheet extends StatefulWidget {
    final double totalCost;
//const Check_out_sheet({required this.totalCost, Key? key}): super (key: key);
  Check_out_sheet({required this.totalCost});


  @override
  State<Check_out_sheet> createState() => _Check_out_sheetState();
}

class _Check_out_sheetState extends State<Check_out_sheet> {
  @override
  Widget build(BuildContext context) {
     return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Checkout',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF181725),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('Delivery',
                    style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF7C7C7C),
                    fontFamily: 'Poppins',
                  ),
                  ),
                  Expanded(child: SizedBox(width: 10,)),
                  Text('Select Method',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff181725),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xff181725),),),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('Payment',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF7C7C7C),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Expanded(child: SizedBox(width: 10,)),
                  SvgPicture.asset('assets/images/card.svg'),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xff181725),),),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('Promo Code',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF7C7C7C),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Expanded(child: SizedBox(width: 10,)),
                  Text('Pick Discount',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff181725),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xff181725),),),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('Total Cost',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF7C7C7C),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Expanded(child: SizedBox(width: 10,)),
                  Text('\$${widget.totalCost.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff181725),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xff181725),),),
                ],
              ),
              Divider(),
              Text('By placing an order you agree to our\n Terms And Conditions',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C),
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: CustomButton(
                      text: 'Place Order',
                      onPressed:(){
                        Get.to(order_accepted());
                     } ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
