import 'package:flutter/material.dart';

class TopExpertSearchTile extends StatelessWidget {
  final icon;
  final text;
  const TopExpertSearchTile({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
