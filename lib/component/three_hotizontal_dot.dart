import 'package:flutter/material.dart';

class ThreeHorizontalDot extends StatelessWidget {
  const ThreeHorizontalDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 3.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 3.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 3.0,
          ),
        ),
      ],
    );
  }
}
