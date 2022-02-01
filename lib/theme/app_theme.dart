import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static const Color secundaryColor = Colors.red;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 1),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primaryColor),
    ),
    listTileTheme: const ListTileThemeData(
        iconColor: primaryColor, textColor: Colors.black),
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
      //iconTheme: IconThemeData(color: Colors.red),
    ),
  );
}
