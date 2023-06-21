import 'package:daily_basket/Layouts/GetStartedPage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return GetStartedPage.route();
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
