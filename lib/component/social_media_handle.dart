import 'package:flutter/material.dart';

class SocialMediaHandle extends StatelessWidget {
  const SocialMediaHandle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Container(
            width: 44.0,
            height: 44.0,
            margin: EdgeInsets.all(
              8.0,
            ),
            child: Image.asset(
              'assets/icons/facebook.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            width: 44.0,
            height: 44.0,
            margin: EdgeInsets.all(
              8.0,
            ),
            child: Image.asset(
              'assets/icons/instagram.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            width: 44.0,
            height: 44.0,
            margin: EdgeInsets.all(
              8.0,
            ),
            child: Image.asset(
              'assets/icons/twitter.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
