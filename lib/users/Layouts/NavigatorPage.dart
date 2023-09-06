import 'package:daily_basket/users/Screens/Navigator.dart';
import 'package:flutter/material.dart';
import '../Screens/MoreScreen.dart';

class NavigatorPage extends StatelessWidget {
  static const String routeName = '/navPage';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const NavigatorPage(),
        settings: const RouteSettings(name: routeName));
  }

  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainNav();
  }
}
