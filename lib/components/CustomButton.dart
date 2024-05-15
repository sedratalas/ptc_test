import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 353,
        height: 67,
        decoration: BoxDecoration(
          color: Color(0xff53B175),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Poppins',
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
