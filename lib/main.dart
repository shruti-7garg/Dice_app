import 'package:flutter/material.dart';

import 'package:myfirstapp/gradient_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.amber, Colors.black), //calling class GradientContainer
      ),
    ),
  );
}

// main.dart-> void main() =>runApp
