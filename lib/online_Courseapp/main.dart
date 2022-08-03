import 'package:flutter/material.dart';
import 'coursepage1.dart';

void main() {
  runApp(courseapp_main());
}

class courseapp_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: coursepage(),
    );
  }
}
