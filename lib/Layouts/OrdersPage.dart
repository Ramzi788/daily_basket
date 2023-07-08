import 'package:flutter/material.dart';
import '../Screens/OrdersScreen.dart';

class OrdersPage extends StatelessWidget {
  static const String routeName = '/OrdersPage';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const OrdersPage(),
        settings: const RouteSettings(name: routeName));
  }

  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrdersScreen();
  }
}
