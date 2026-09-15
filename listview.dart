import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List alphabets = <String>[
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("MY New App")),
        body: ListView.builder(
          itemCount: alphabets.length,
          itemBuilder: (context, index) {
            return _containerCreator(alphabets[index]);
          },
        ),
      ),
    );
  }
}

class ColorGenerator {
  static final Random _random = Random();

  // 1. Static method to generate a random color
  static Color getColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  // 2. Static method to generate gradient
  static LinearGradient getRandomGradient() {
    return LinearGradient(
      colors: [getColor(), getColor()],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

Widget _containerCreator(String text) => Container(
  alignment: Alignment.center,
  width: 120,
  height: 120,
  // Spacing between items
  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  // Gradient decoration (removed color property to avoid crash)
  decoration: BoxDecoration(
    gradient: ColorGenerator.getRandomGradient(),
    borderRadius: BorderRadius.circular(12),
  ),
  child: Text(text, style: const TextStyle(fontSize: 26, color: Colors.white)),
);
