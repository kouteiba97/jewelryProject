import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelry/Components/Category_List_Shape.dart';
import 'package:jewelry/Components/inkWell.dart';
import 'package:jewelry/Components/single_product_shape.dart';
import 'package:jewelry/Screens/credit_card.dart';
import 'package:jewelry/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var product_list = [
      {
        "name": "diamond",
        "picture": "images/logo.jpg",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Ring",
        "picture": "images/rings.jpg",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Bracelet_white",
        "picture": "images/category/Cbracelet.png",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Bracelet_1",
        "picture": "images/category/necklas.png",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Bracelet_2",
        "picture": "images/logo.jpg",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Ring_",
        "picture": "images/rings.jpg",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Bracelet_white_1",
        "picture": "images/category/Cbracelet.png",
        "old_price": "1200",
        "price": "80",
      },
      {
        "name": "Bracelet_3",
        "picture": "images/category/necklas.png",
        "old_price": "1200",
        "price": "80",
      },
    ];
    /* final List <Widget> _ChildrenPage =[
          HomeScreen(),
          ProductDetails(),
    ];*/
    // ignore: non_constant_identifier_names
    Widget CarouselImages = new Container(
      height: 320.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/product/Pringss.jpg'),
          AssetImage('images/nicklas.jpg'),
          AssetImage('images/rings.jpg'),
          AssetImage('images/logo.jpg'),
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        indicatorBgPadding: 4.0,
        borderRadius: true,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          microseconds: 500,
        ),
      ),
    );

    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // Header
            new UserAccountsDrawerHeader(
              accountName: Text('bijoux_d_elegance'),
              accountEmail: Text('bijoux_@_elegance.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            // Body
            DrawerInkWell(
                onTap: () {}, label: 'Home Page', icon: Icon(Icons.home)),
            DrawerInkWell(
                onTap: () {}, label: 'My Account', icon: Icon(Icons.person)),
            DrawerInkWell(
                onTap: () {},
                label: 'My Order',
                icon: Icon(Icons.shopping_basket)),
            DrawerInkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              label: "Shopping Cart",
              icon: Icon(Icons.shopping_cart),
            ),
            DrawerInkWell(
                onTap: () {},
                label: 'Favorites',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            Divider(
              thickness: 2.0,
            ),
            DrawerInkWell(
                onTap: () {},
                label: 'Settings',
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                )),
            DrawerInkWell(
              onTap: () {},
              label: 'Help',
              icon: Icon(
                Icons.help,
                color: Colors.green,
              ),
            ),

            Divider(
              thickness: 2.0,
            ),
            Text(
              " Follow Us ",
              style: kCategoryTextStyle,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Bijoux d\'elegance',
          style: TextStyle(fontSize: 17.0, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25.0,
              ),
              onPressed: null),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CarouselImages;
              },
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Category(
                        imageLocation: 'images/category/Cbracelet.png',
                        imageCaption: 'Bracelet',
                      ),
                      Category(
                        imageLocation: 'images/category/Cring.png',
                        imageCaption: 'Ring',
                      ),
                      Category(
                        imageLocation: 'images/category/CearRing.png',
                        imageCaption: 'Earring',
                      ),
                      Category(
                        imageLocation: 'images/category/necklas.png',
                        imageCaption: 'Necklace',
                      ),
                      Category(
                        imageLocation: 'images/category/Cbracelet.png',
                        imageCaption: 'Bracelet',
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
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
/*
ListView(
        children: <Widget>[
          CarouselImages,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories',style: kListTextStyle,),
          ),

          CategoriesListView(),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent Products',style: kListTextStyle,),
          ),

          Container(
            child: Products(),
          ),
        ],
      ),
 */
/* bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Color(0xFF2C7873),
        selectedItemColor: kIconBttmNavBarColor,
        elevation: 4.0,
        items:<BottomNavigationBarItem> [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text('Home',style: kBottomNavBarTextStyle,),

          ),

          BottomNavigationBarItem(
             icon: Icon(Icons.favorite),
             title: Text('Favorites',style: kBottomNavBarTextStyle,),

          ),

           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             title: Text('Account',style: kBottomNavBarTextStyle,),

          ),
        ],
         onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        ),*/