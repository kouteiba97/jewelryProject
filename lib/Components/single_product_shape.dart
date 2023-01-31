import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelry/Screens/product_details_screen.dart';
import '../constants.dart';

class SingleProduct extends StatelessWidget {
  SingleProduct({
    // ignore: non_constant_identifier_names
    this.product_name,
    // ignore: non_constant_identifier_names
    this.product_picture,
    // ignore: non_constant_identifier_names
    this.product_oldPrice,
    // ignore: non_constant_identifier_names
    this.product_price
  });
  // ignore: non_constant_identifier_names
  final product_name;
  // ignore: non_constant_identifier_names
  final product_picture;
  // ignore: non_constant_identifier_names
  final product_oldPrice;
  // ignore: non_constant_identifier_names
  final product_price;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Hero( // i used hero here for the perfect animation
        tag: product_name,
        child: Material(
          child: InkWell( //to make everything pressed
            onTap: ()=> Navigator.of(context).push(   // This function used to go to the product details
              new MaterialPageRoute(
                builder:(context)=>(
                     ProductDetails(
                      product_details_name:  product_name,
                      product_details_picture: product_picture,
                      product_details_price: product_price,
                      product_details_oldPrice: product_oldPrice,
                    )
                ),
              ),
            ),

            child: GridTile( // to create footer to write the name and the price and everything about the product
              footer:Container(
                color: kFooterColor,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0 , 5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(product_name,style: kCategoryTextStyle,),),
                      Text('DA $product_price',style: kNumberTextStyle,),
                    ],
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
