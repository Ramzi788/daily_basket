import 'package:daily_basket/Screens/GetStartedScreen.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const GetStartedPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GetStartedScreen(),
    );
  }
}