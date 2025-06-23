import 'package:flutter/material.dart';

class Subject {
  final String name;
  final String icon; 
  final String description;
  final Color cardColor;

  Subject({required this.name,required this.cardColor, required this.icon, required this.description});
}

final List<Subject> subjects = [
  Subject(
    name: 'Mathematics',
    cardColor: Colors.lightBlue,
    icon: 'assets/logos/math.png',
    description: 'Study of numbers and shapes',
  ),
  Subject(
    name: 'Chemistry',
    cardColor: Colors.orange,
    icon: 'assets/logos/chem.png',
    description: 'Study of numbers and shapes',
  ),
  Subject(
    name: 'Physics',
    cardColor: Colors.red,
    icon: 'assets/logos/physics.png',
    description: 'Study of numbers and shapes',
  ),
  Subject(
    name: 'Programming',
    cardColor: Colors.blueAccent,
    icon: 'assets/logos/code.png',
    description: 'Study of numbers and shapes',
  ),
  Subject(
    name: 'English',
    cardColor: Colors.pinkAccent,
    icon: 'assets/logos/eng.png',
    description: 'Study of numbers and shapes',
  ),
];
