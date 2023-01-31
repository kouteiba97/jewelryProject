import 'package:flutter/material.dart';
import 'package:jewelry/Components/Category_List_Shape.dart';

class HeaderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: Delegate(),
    );
  }
}
 class Delegate extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
   return SliverList(

     delegate: SliverChildBuilderDelegate(
           (BuildContext context, int index){
         return Container(
           height: 120.0,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: <Widget>[
               Category(
                 imageLocation:'images/category/Cbracelet.png',
                 imageCaption: 'Bracelet',
               ),
               Category(
                 imageLocation:'images/category/Cring.png',
                 imageCaption: 'Ring',
               ),
               Category(
                 imageLocation:'images/category/CearRing.png',
                 imageCaption: 'Ear Ring',
               ),
               Category(
                 imageLocation:'images/category/necklas.png',
                 imageCaption: 'Necklas',
               ),
               Category(
                 imageLocation:'images/category/Cbracelet.png',
                 imageCaption: 'Bracelet',
               ),
             ],
           ),
         );
       },
       childCount: 1,
     ),
   );
  }

  @override

  double get maxExtent => double.infinity;

  @override

  double get minExtent => double.infinity;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
   
    return true;
  }
}
