import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff53B175),
      body: Center(
        child: SvgPicture.asset(
          'assets/logo/logo.svg',

        ),
      ),
    );
  }
}
