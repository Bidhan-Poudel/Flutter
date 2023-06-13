import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 122, 94, 198), Color.fromARGB(255, 215, 7, 218)),
      ),
    ),
  );
}
