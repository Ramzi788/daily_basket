import 'package:flutter/material.dart';
import '../Screens/MoreScreen.dart';

class MorePage extends StatelessWidget {
  static const String routeName = '/more';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const MorePage(),
        settings: const RouteSettings(name: routeName));
  }

  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MoreScreen();
  }
}
