import 'package:assignment/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BlackBox Assignment',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        useMaterial3: true,
      ),
      home: const StartScreen(),
    );
  }
}
