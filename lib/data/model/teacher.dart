import 'package:ok/data/model/person.dart';

class Teacher extends Person {
  final List<String>? subjects;

  Teacher({required super.id, required super.name, this.subjects});

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      subjects: json["subjects"] ?? [],
    );
}
