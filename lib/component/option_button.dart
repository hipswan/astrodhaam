import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final optionText;
  final Function? onTap;
  const OptionButton({Key? key, this.optionText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(
        26.0,
      ),
      elevation: 2.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          26.0,
        ),
        onTap: () {
          onTap!();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 17.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(
              26.0,
            ),
          ),
          child: Center(
            child: optionText,
          ),
        ),
      ),
    );
  }
}
