import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 36, 27, 208),
          Color.fromARGB(255, 108, 68, 134)),
      ),
    ),
  );
}
