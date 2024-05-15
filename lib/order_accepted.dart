import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/components/CustomButton.dart';

class order_accepted extends StatefulWidget {
  const order_accepted({Key? key}) : super(key: key);

  @override
  State<order_accepted> createState() => _order_acceptedState();
}

class _order_acceptedState extends State<order_accepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 151.0,right: 30,bottom: 40),
              child: SvgPicture.asset(
                'assets/icons/check.svg',
              ),
            ),
            Text(
                'Your Order has been\naccepted',
                 textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize: 28,
                 color: Color(0xFF181725),
                 fontFamily: 'Poppins',
                 height: 1.4,
            ),

            ),
            SizedBox(height: 10,),
            Text(
              'Your items has been placed and is on \nits way to being processed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7C7C7C),
                fontFamily: 'Poppins',
                height: 1.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: CustomButton(text: 'Track Order', onPressed: (){}),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Back to home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF181725),
                  fontFamily: 'Poppins',
                  height: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
