import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/CustomButton.dart';

class onbording extends StatefulWidget {
  const onbording({Key? key}) : super(key: key);

  @override
  State<onbording> createState() => _onbordingState();
}

class _onbordingState extends State<onbording> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 450),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(
                    'assets/logo/carrots.svg',
                  ),
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    height: 1.0,
                  ),
                ),
                Text(
                  'to our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    height: 1.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 30),
                  child: Text(
                    'Get your groceries in as fast as one hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xB3FCFCFC),
                      fontFamily: 'Poppins',
                      height: 1.0,
                    ),
                  ),
                ),
                CustomButton(
                  text: 'Get Started',
                  onPressed: () {
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
