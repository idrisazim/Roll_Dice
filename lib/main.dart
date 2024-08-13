import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 217, 91, 91),
            const Color.fromARGB(255, 85, 146, 226)),
      ),
    ),
  );
}
