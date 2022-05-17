import 'package:flutter/material.dart';
import 'package:posttest5_1915016050_rahmatkamara/landing_page.dart';
import 'package:posttest5_1915016050_rahmatkamara/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
