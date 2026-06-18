import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF31526E),
    ),

    scaffoldBackgroundColor: const Color(0xFFFAF8F4),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF31526E),
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
  );
}