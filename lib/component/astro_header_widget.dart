import 'package:flutter/material.dart';

class AstroHeader extends StatelessWidget {
  final header;
  const AstroHeader({Key? key, this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 12.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Back',
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            child: Center(
              child: Text(
                header,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 20.0,
            child: Icon(
              Icons.ac_unit,
            ),
          ),
          SizedBox(
            width: 13.0,
          ),
          Container(
            width: 20.0,
            child: Icon(
              Icons.ac_unit,
            ),
          ),
        ],
      ),
    );
  }
}
