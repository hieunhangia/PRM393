import 'package:flutter/material.dart';
import 'package:ok/ui/screens/home_page_lab_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePageLab4(),
    );
  }
}
