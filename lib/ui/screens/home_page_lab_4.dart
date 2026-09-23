import 'package:flutter/material.dart';
import 'package:ok/ui/screens/lab_4_exercise_1.dart';
import 'package:ok/ui/screens/lab_4_exercise_2.dart';
import 'package:ok/ui/screens/lab_4_exercise_3.dart';
import 'package:ok/ui/screens/lab_4_exercise_4.dart';
import 'package:ok/ui/screens/lab_4_exercise_5.dart';
import 'package:ok/ui/widgets/home_page_lab4_list_item.dart';

class HomePageLab4 extends StatelessWidget {
  const HomePageLab4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 4 – Flutter UI Fundamentals')),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          HomePageLab4ListItem(
            title: 'Exercise 1 – Core Widgets Demo',
            destination: const Lab4Exercise1(title: 'Exercise 1 – Core Widgets Demo'),
          ),
          const SizedBox(height: 10),
          HomePageLab4ListItem(
            title: 'Exercise 2 – Input Controls Demo',
            destination: const Lab4Exercise2(title: 'Exercise 2 – Input Controls Demo'),
          ),
          const SizedBox(height: 10),
          HomePageLab4ListItem(
            title: 'Exercise 3 – Layout Demo',
            destination: const Lab4Exercise3(title: 'Exercise 3 – Layout Demo'),
          ),
          const SizedBox(height: 10),
          HomePageLab4ListItem(
            title: 'Exercise 4 – App Structure & Theme',
            destination: const Lab4Exercise4(title: 'Exercise 4 – App Structure & Theme'),
          ),
          const SizedBox(height: 10),
          HomePageLab4ListItem(
            title: 'Exercise 5 – Common UI Fixes',
            destination: const Lab4Exercise5(title: 'Exercise 5 – Common UI Fixes'),
          ),
        ],
      ),
    );
  }
}
