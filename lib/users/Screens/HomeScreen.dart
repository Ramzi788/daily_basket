import 'package:daily_basket/Constants/themes.dart';
import 'package:daily_basket/Constants/vars.dart';
import 'package:daily_basket/users/Screens/OrdersScreen.dart';
import 'package:mysql1/mysql1.dart';
import 'package:daily_basket/components/LargeCards.dart';
import 'package:daily_basket/components/Products.dart';
import 'package:daily_basket/components/Categories.dart';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../components/SearchField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: theme().primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: Colors.black,
          backgroundColor: theme().primaryColor,
          elevation: 0,
          centerTitle: false,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Daily Basket",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrdersScreen()));
                },
                icon: Icon(MdiIcons.cartArrowDown),
                color: Colors.white,
              ),
            ),
          ],
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SearchField(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Text(
                      "Top Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //Categories
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Categories(
                                  imagePath: catList[i][3],
                                  catIcon: catList[i][1],
                                  catName: catList[i][0],
                                  backColor: catList[i][2]),
                            )
                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Fresh Products",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: LargeCards(
                                    title: largecardList[i][0],
                                    imagePath: largecardList[i][1]),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //----------------------------Best Sellers-----------------------------------
                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Our Best Sellers",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Products(
                                    itemName: productsList[i][0],
                                    itemPrice: productsList[i][1],
                                    imagePath: productsList[i][2]),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //----------------------------Snacks-----------------------------------
                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Snacks",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: LargeCards(
                                    title: largecardList2[i][0],
                                    imagePath: largecardList2[i][1]),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
