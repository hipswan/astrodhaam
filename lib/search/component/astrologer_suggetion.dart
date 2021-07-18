import 'package:flutter/material.dart';

class AstrologerSuggestion extends StatelessWidget {
  final color;
  final astrologerName;
  const AstrologerSuggestion({
    Key? key,
    this.astrologerName,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        8.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Theme.of(context).secondaryHeaderColor,
        ),
        borderRadius: BorderRadius.circular(
          50.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            astrologerName,
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            padding: EdgeInsets.all(
              4.0,
            ),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
