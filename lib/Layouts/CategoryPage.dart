import 'package:daily_basket/Screens/CategoryScreen.dart';
import 'package:daily_basket/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/category';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const CategoryPage(),
        settings: const RouteSettings(name: routeName));
  }

  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CategoryScreen();
  }
}
