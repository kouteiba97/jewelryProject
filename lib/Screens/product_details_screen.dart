import 'package:flutter/material.dart';
import 'package:jewelry/Components/iconButton.dart';
import 'package:jewelry/Components/single_product_shape.dart';
import 'package:jewelry/constants.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    // ignore: non_constant_identifier_names
    this.product_details_name,
    // ignore: non_constant_identifier_names
    this.product_details_picture,
    // ignore: non_constant_identifier_names
    this.product_details_price,
    // ignore: non_constant_identifier_names
    this.product_details_oldPrice
  });
  // ignore: non_constant_identifier_names
  final product_details_name;
  // ignore: non_constant_identifier_names
  final product_details_picture;
  // ignore: non_constant_identifier_names
  final product_details_price;
  // ignore: non_constant_identifier_names
  final product_details_oldPrice;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name":"Bracelet",
      "picture":"images/product/Pbracelet.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"Bracelet2",
      "picture":"images/product/Pbracelet2.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"Bracelet3",
      "picture":"images/product/Pbracelet3.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"necklas",
      "picture":"images/product/Pnicklas.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"necklas2",
      "picture":"images/product/Pnicklas2.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"Rîng",
      "picture":"images/product/Pring3.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"Brelet_white",
      "picture":"images/product/Pbracelet2.jpg",
      "old_price":"1200",
      "price":"80",
    },
    {
      "name":"Ring_",
      "picture":"images/product/Pringss.jpg",
      "old_price":"1200",
      "price":"80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'Bijoux d\'elegance',
              style: TextStyle(fontSize: 17.0,color: Colors.white),
            ),
            centerTitle: true,
            actions: <Widget>[
              new IconButton(
                  icon: Icon(Icons.search,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  onPressed: null
              ),

            ],
            expandedHeight: 320.0,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: new GridTile(
                  child: Image.asset(widget.product_details_picture),
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text(widget.product_details_name,
                              style: kCategoryTextStyle,
                            ),
                          ),
                          Expanded(
                            child: Text('DA ${widget.product_details_price}',
                              style: kNumberTextStyle,),
                          ),
                          Expanded(
                            child: Text('DA ${widget.product_details_oldPrice}',
                              style: kNumberTextStyle.copyWith(
                                decoration: TextDecoration.lineThrough,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ), //this container has the imageProduct and the footer
            ),
          ),
          SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                      return Row( // ====== ROW OF BUTTONS ========
                        children: <Widget>[
                          Expanded(child: MaterialButton(
                            onPressed: () {
                              showDialog(context: context, builder: (context) {
                                return AlertDialog(
                                  title: Text('Size'),
                                  content: Text('Here we can select the size of items'),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () {}, child: Text('Confirm')),
                                    FlatButton(onPressed: () {
                                      Navigator.of(context).pop(context);
                                    }, child: Text('Cancel')),
                                  ],
                                );
                              });
                            },
                            elevation: 0.2,
                            color: Colors.white,
                            textColor: Colors.teal,
                            child: Row(
                              children: <Widget>[
                                Expanded(child: Text('Size'),
                                ),
                                Expanded(child: Icon(Icons.arrow_drop_down,
                                  size: 30.0,),
                                ),
                              ],
                            ),
                          ), //this the size button
                          ),
                          Expanded(child: MaterialButton(
                            onPressed: () {
                              showDialog(context: context, builder: (context) {
                                return AlertDialog(
                                  title: Text('Quantity'),
                                  content: Text(
                                      'Here we can select the quantity of items'),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () {}, child: Text('Confirm')),
                                    FlatButton(onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                      child: Text('Cancel'),
                                    ),
                                  ],
                                );
                              });
                            },
                            elevation: 0.2,
                            color: Colors.white,
                            textColor: Colors.teal,
                            child: Row(
                              children: <Widget>[
                                Expanded(child: Text('Quantity'),
                                ),
                                Expanded(child: Icon(Icons.arrow_drop_down,
                                  size: 30.0,),
                                ),
                              ],
                            ),
                          ), //this the quantity button
                          ),
                        ],
                      );
                    },
                  childCount: 1,
                ),
              ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return Row( // ====== The second ROW OF BUTTONS ========
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: MaterialButton(
                        onPressed: () {},
                        elevation: 0.2,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: Text(
                          'Buy now',
                          style: kCategoryTextStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      ),
                      IconButtons(
                        onPressed: () {},
                        icon: Icons.add_shopping_cart,
                      ),
                      IconButtons(
                        onPressed: () {},
                        icon: Icons.favorite_border,
                      ),
                    ],
                  );
                },
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context ,int index){
                  return Column(
                    children: <Widget>[
                      Divider(thickness: 2.0,),
                      ListTile(
                        title: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                          child: Text('Product Details',
                            style: kCategoryTextStyle.copyWith(fontSize: 20.0),
                          ),
                        ),
                        subtitle: Text(
                          'is simply dummy text of the printing and typesetting industry.'
                              ' and more recently with desktop publishing software like Aldus PageMaker'
                              ' including versions of Lorem Ipsum.',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text('Product Condition',
                              style: kCategoryTextStyle.copyWith(color: Colors.grey[900],fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text(' New' + '.'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text('Product Condition',
                              style: kCategoryTextStyle.copyWith(color: Colors.grey[900],fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text(' New' + '.'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text('Product Condition',
                              style: kCategoryTextStyle.copyWith(color: Colors.grey[900],fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text(' New' + '.'),
                          ),
                        ],
                      ),
                      Divider(thickness: 2.0,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 12.0, 5.0, 5.0),
                            child: Text('Similar Product',
                              style: kCategoryTextStyle.copyWith(fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              childCount: 1,
            ),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index ){
                  return SingleProduct(
                    product_name: product_list[index]['name'],
                    product_picture: product_list[index]['picture'],
                    product_oldPrice: product_list[index]['old_price'],
                    product_price: product_list[index]['price'],
                  );
                },
                childCount: product_list.length,
              ),
          ),
        ],
      ),
    );
  }
}
