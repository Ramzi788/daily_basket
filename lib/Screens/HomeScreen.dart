import 'package:daily_basket/components/Categories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../components/SearchField.dart';
import '../components/BottomNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                child: Icon(MdiIcons.fromString('menu'))),
            const Text(
              "Daily Basket",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                child: Icon(MdiIcons.fromString('cart-outline')))
          ]),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchField(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Shop By Catgory",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(fontSize: 15),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/category');
                          },
                          icon: const Icon(FontAwesomeIcons.arrowRight),
                          iconSize: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Categories(),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Brands",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 15),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.arrowRight),
                            iconSize: 25,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15, bottom: 10),
              child: Text(
                "Best Sellers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
