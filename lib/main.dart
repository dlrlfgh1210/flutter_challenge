import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const InitialScreen(),
    );
  }
}
