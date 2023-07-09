// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.green,
    primaryColorDark: const Color.fromARGB(255, 96, 165, 250),
    primaryColorLight: const Color.fromARGB(255, 196, 253, 198),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: const Color(0xFFF5F5F5),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 55, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
      headline2: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      headline3: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      headline6: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
    ),
  );
}
