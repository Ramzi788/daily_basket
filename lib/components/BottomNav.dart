import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.orange,
        animationDuration: Duration(milliseconds: 400),
        items: [
          Icon(
            MdiIcons.homeOutline,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.grip,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.fromString('account-outline'),
            color: Colors.white,
          ),
        ]);
  }
}
