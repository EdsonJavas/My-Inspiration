import 'package:flutter/material.dart';
import 'styles/theme.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}
