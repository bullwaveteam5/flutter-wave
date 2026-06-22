import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/landing/screens/splash_screen.dart';

import 'features/home/screens/home_screen.dart';

void main() {
  runApp(const WaveGoApp());
}

class WaveGoApp extends StatelessWidget {
  const WaveGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WaveGo',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}