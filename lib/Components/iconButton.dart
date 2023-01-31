import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';

class IconButtons extends StatelessWidget {
  IconButtons({this.onPressed, this.icon});
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed(),
      icon: Icon(
        icon,
        color: kTealColor,
      ),
      iconSize: 30.0,
    );
  }
}
