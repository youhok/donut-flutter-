import 'package:flutter/material.dart';
import 'package:fooddonut/tab/burger_tab.dart';
import 'package:fooddonut/tab/donut_tab.dart';
import 'package:fooddonut/tab/pancake_tab.dart';
import 'package:fooddonut/tab/pizza_tab.dart';
import 'package:fooddonut/tab/smoothie_tab.dart';
import 'package:fooddonut/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    //donut tab,
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    //buger Tab
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    //smothie tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    //pancake tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    //pizza tab
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 34,
                ),
                onPressed: () {
                  //account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            //tab bar
            TabBar(indicatorColor: Colors.pink, tabs: myTabs),
            //tab bar view
            Expanded(
                child: TabBarView(
              children: [
                //donut page
                DonutTab(),
                //buger page
                BurgerTab(),
                //smoothie page
                SmoothieTab(),
                //pancake tab
                PancakeTab(),
                //pizza page
                PizzaTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
