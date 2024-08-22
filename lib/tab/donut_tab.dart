// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fooddonut/util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutOnSale = [
    //
    ["Ice Cream", "36", Colors.blue, "lib/images/donutmixe.png"],
    ["Strawberry", "45", Colors.red, "lib/images/donutred.png"],
    ["Grape Ape", "84", Colors.pink, "lib/images/donutpink.png"],
    ["Choco", "95", Colors.brown, "lib/images/donutblack.png"]
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: EdgeInsets.all(12),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1.5,
              ),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutOnSale[index][0],
              donutPrice: donutOnSale[index][1],
              donutColor: donutOnSale[index][2],
              imageName: donutOnSale[index][3],
              );
        });
  }
}
