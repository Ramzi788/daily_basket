import 'package:daily_basket/Layouts/CategoryPage.dart';
import 'package:daily_basket/Screens/CategoryScreen.dart';
import 'package:daily_basket/Screens/OrdersScreen.dart';
import 'package:daily_basket/Screens/HomeScreen.dart';
import 'package:daily_basket/Screens/MoreScreen.dart';
import 'package:daily_basket/components/CartItems.dart';
import 'package:daily_basket/components/Categories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartItems(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: GNav(
            selectedIndex: selectedIndex,
            onTabChange: _navigateBottomBar,
            backgroundColor: Colors.green,
            activeColor: Colors.white,
            color: Colors.white,
            iconSize: 25,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: FluentIcons.home_12_filled,
                text: "Home",
              ),
              GButton(
                icon: FluentIcons.grid_16_filled,
                text: "Categories",
              ),
              GButton(
                icon: FontAwesomeIcons.cartShopping,
                iconSize: 20,
                text: "Cart",
              ),
              GButton(
                icon: FluentIcons.more_horizontal_16_filled,
                iconSize: 30,
                text: "More",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
