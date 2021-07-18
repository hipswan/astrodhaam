import 'package:flutter/material.dart';

class ReviewWall extends StatelessWidget {
  const ReviewWall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Reviews'),
              Text('148'),
            ],
          ),
          SizedBox(
            height: 19.0,
          ),
          //TODO: Carousal
        ],
      ),
    );
  }
}
