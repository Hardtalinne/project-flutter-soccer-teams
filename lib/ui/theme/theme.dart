import 'package:flutter/material.dart';

ThemeData createAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.deepPurple.shade50,
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    ),
  );
}
