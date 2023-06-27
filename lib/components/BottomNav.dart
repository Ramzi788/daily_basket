import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: GNav(
          backgroundColor: Colors.green,
          activeColor: Colors.white,
          color: Colors.white,
          iconSize: 25,
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: FontAwesomeIcons.grip,
              text: "Categories",
            ),
            GButton(
              icon: Icons.favorite_border_sharp,
              text: "Favourites",
            ),
            GButton(
              icon: FontAwesomeIcons.ellipsis,
              text: "More",
            ),
          ],
        ),
      ),
    );
  }
}
