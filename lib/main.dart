import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/confirmation_code_screen.dart';
import 'package:nomad_flutter_challenge/interest_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      home: const ConfirmationCodeScreen(),
    );
  }
}
