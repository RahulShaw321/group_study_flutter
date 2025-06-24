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
    description: 'Explore algebra, geometry, calculus, and problem-solving through collaborative learning.',
  ),
  Subject(
    name: 'Chemistry',
    cardColor: Colors.orange,
    icon: 'assets/logos/chem.png',
    description: 'Understand atoms, molecules, reactions, and the periodic table with real-life applications.',
  ),
  Subject(
    name: 'Physics',
    cardColor: Colors.red,
    icon: 'assets/logos/physics.png',
    description: 'Dive into motion, energy, gravity, and quantum theories with peer discussions.',
  ),
  Subject(
    name: 'Programming',
    cardColor: Colors.blueAccent,
    icon: 'assets/logos/code.png',
    description: 'Learn coding fundamentals, algorithms, and real-world projects in languages like Python and Java.',
  ),
  Subject(
    name: 'English',
    cardColor: Colors.pinkAccent,
    icon: 'assets/logos/eng.png',
    description: 'Improve grammar, vocabulary, reading, and speaking skills through group activities.',
  ),
];
