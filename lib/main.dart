import 'package:flutter/material.dart';

class Person {
  final String _id;
  final String _name;
  final int _age;

  const Person({required this._id, required this._name, required this._age});

  Person toCopy({String? id, String? name, int? age}) =>
      Person(id: id ?? _id, name: name ?? _name, age: age ?? _age);
}

void main() {
  var x = 9;
  var y = 20;
  print("$x + $y = ${add(x, y)}");
  print("$x + $y = ${add1(y)}");
  print("$x + $y = ${add2(5, b: x)}");
  var numbers = [3, 7, 8, 12, 9, 0];
  for (int i = 0; i < numbers.length; i++) {
    print("number[$i] = ${numbers[i]}");
  }
  for (int i in numbers) {
    print(i);
  }
  numbers.forEach((i) => print(i));

  Person p = Person(id: "3", name: "A", age: 6);
  print("Person age: ${p._age}");

  print(getOdd(numbers));
  //runApp(const MyApp());
}

List<int> getOdd(List<int> s) => s.where((x) => x.isOdd).toList();

int add(int a, int b) => a + b;

int add1([int a = 3, int b = 6]) => a + b;

int add2(int c, {int a = 6, required int b}) => a + b;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DateRangePickerDialog(
            firstDate: DateTime(36),
            lastDate: DateTime(69),
          ),
        ),
      ),
    );
  }
}
