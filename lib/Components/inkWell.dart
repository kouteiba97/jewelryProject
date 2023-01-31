import 'package:flutter/material.dart';

class DrawerInkWell extends StatelessWidget {
  DrawerInkWell({this.onTap, this.label, this.icon});
  final Function onTap;
  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(label),
        leading: icon,
      ),
    );
  }
}
