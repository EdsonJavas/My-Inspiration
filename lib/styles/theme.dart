import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink,
      primary: Colors.pink[300]!,
      onPrimary: Colors.white,
      secondary: Colors.teal[200]!,
      onSecondary: Colors.black,
      background: Colors.white,
      onBackground: Colors.black,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
