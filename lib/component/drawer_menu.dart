import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final String? text;
  final onPressed;
  const DrawerMenu({Key? key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.0,
        ),
        child: RichText(
          strutStyle: StrutStyle(
            fontSize: 56.0,
          ),
          text: TextSpan(
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
            children: [
              TextSpan(
                text: text?.substring(0, 1),
                style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: text?.substring(1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
