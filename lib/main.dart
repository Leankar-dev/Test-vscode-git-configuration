import 'package:calculator_001/app/pages/animated_positioned_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// alterado no vs code  29092924

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimatedPositionedPage(),
    );
  }
}
