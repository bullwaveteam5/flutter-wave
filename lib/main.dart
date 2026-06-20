import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/login/screens/login_screen.dart';

import 'features/onboarding/presentation/onboarding_screen.dart';

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
      // home: const LoginScreen(),
      home: OnboardingScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'WaveGo',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}