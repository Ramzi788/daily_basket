import 'package:daily_basket/Layouts/GetStartedPage.dart';
import 'package:daily_basket/config/AppRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: GetStartedPage.routeName,
    );
  }
}
