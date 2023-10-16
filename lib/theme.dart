import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    hintColor: Colors.amber,
    brightness: Brightness.light,
    // Add more theme configurations as needed
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    hintColor: Colors.amber,
    // Add more theme configurations as needed
  );
}
