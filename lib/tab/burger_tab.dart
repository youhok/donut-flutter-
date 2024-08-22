// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fooddonut/util/donut_tile.dart';

class BurgerTab extends StatelessWidget {
   List burgerOnSale = [
    //
    ["Burger", "36", Colors.blue, "lib/images/burger.png"],
    ["BurgerDouble", "45", Colors.red, "lib/images/burgerdouble.png"],
    ["CheeseBurger", "84", Colors.purple, "lib/images/cheeseburger.png"],
    ["FastFood", "95", Colors.brown, "lib/images/fast-food.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: EdgeInsets.all(12),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1.5,
              ),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: burgerOnSale[index][0],
              donutPrice: burgerOnSale[index][1],
              donutColor: burgerOnSale[index][2],
              imageName: burgerOnSale[index][3],
              );
        });
  }
}