import 'package:flutter/material.dart';
import 'package:formula_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formula App',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF29133F)),
      home: const SplashScreen(),
    );
  }
}
