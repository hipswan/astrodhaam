import 'package:flutter/material.dart';

class TweenAnimationBar extends StatelessWidget {
  const TweenAnimationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(
        begin: 0.0,
        end: 30.0,
      ),
      duration: Duration(
        milliseconds: 750,
      ),
      builder: (context, double value, child) => Container(
        width: value,
        child: child,
      ),
      child: Container(
        height: 10.0,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(
            2.0,
          ),
        ),
      ),
      curve: Curves.easeIn,
    );
  }
}
