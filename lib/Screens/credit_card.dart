import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/Components/Cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart ",
          style:kCategoryTextStyle.copyWith(fontSize: 20.0,color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: CartProducts(),

      bottomNavigationBar:
      Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text("total",style:kListTextStyle,),
              subtitle: Text(" 1000 DA ",style:kNumberTextStyle ,),
            ),
            ),
            Expanded(child:MaterialButton(
              onPressed: (){},
              child: Text("Check out",style:kListTextStyle.copyWith(color: Colors.white) ,),
              color: Colors.black,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
