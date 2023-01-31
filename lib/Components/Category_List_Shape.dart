import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';

class Category extends StatelessWidget {
  Category({this.imageLocation, this.imageCaption});
  final String imageLocation;
  final String imageCaption;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(imageLocation,width: 150.0,height: 80.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption,style: kCategoryTextStyle,),
          ),
        ),
      ),
    );
  }
}


