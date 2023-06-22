import 'package:daily_basket/Layouts/CategoryPage.dart';
import 'package:daily_basket/Layouts/GetStartedPage.dart';
import 'package:daily_basket/Layouts/HomePage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return GetStartedPage.route();
      case HomePage.routeName:
        return HomePage.route();
      case CategoryPage.routeName:
        return CategoryPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('error')),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
