import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  // ignore: non_constant_identifier_names
  var Cart_content = [
    {
      "name":"diamond",
      "picture":"images/logo.jpg",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Ring",
      "picture":"images/rings.jpg",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Bracelet_white",
      "picture":"images/category/Cbracelet.png",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Bracelet_1",
      "picture":"images/category/necklas.png",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Bracelet_2",
      "picture":"images/logo.jpg",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Ring_",
      "picture":"images/rings.jpg",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Bracelet_white_1",
      "picture":"images/category/Cbracelet.png",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
    {
      "name":"Bracelet_3",
      "picture":"images/category/necklas.png",
      "price":80,
      "size":50,
      "color":"gold",
      "quantity":7,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Cart_content.length,
      itemBuilder: (context, index){
        return SingleCardProducts(
          cart_product_name: Cart_content[index]["name"],
          cart_product_picture: Cart_content[index]["picture"],
          cart_product_price: Cart_content[index]["price"],
          cart_product_size: Cart_content[index]["size"],
          cart_product_color: Cart_content[index]["color"],
          cart_product_quantity: Cart_content[index]["quantity"],
        );
      },
    );
  }
}
class SingleCardProducts extends StatelessWidget {
  SingleCardProducts({
    this.cart_product_name, this.cart_product_picture, this.cart_product_price,
    this.cart_product_size, this.cart_product_color, this.cart_product_quantity,
  });
  // ignore: non_constant_identifier_names
  final cart_product_name;
  // ignore: non_constant_identifier_names
  final cart_product_picture;
  // ignore: non_constant_identifier_names
  final cart_product_price;
  // ignore: non_constant_identifier_names
  final cart_product_size;
  // ignore: non_constant_identifier_names
  final cart_product_color;
  // ignore: non_constant_identifier_names
  final cart_product_quantity;
  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        title: Text(cart_product_name,style: kCategoryTextStyle.copyWith(fontSize: 16),),
       leading: Image.asset(cart_product_picture,width: 80.0,height: 80.0,),
        subtitle: Column(
          children: <Widget>[
            //a row to contain the size, price, and ...for
            Row(
              children: <Widget>[
                //SIZE
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size: ",style: kCategoryTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("${cart_product_size}",style: kNumberTextStyle,),
                ),
                //COLOR
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color: ",style: kCategoryTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("${cart_product_color}",style: kCategoryTextStyle,)
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("${cart_product_price} DA",style: kNumberTextStyle.copyWith(color: Colors.red),),
            ),
          ],
        ),
        trailing: Expanded(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_drop_up,), onPressed: (){}),
                Text("${cart_product_quantity}",style:kNumberTextStyle,),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
