import 'package:flutter/material.dart';

import 'home.dart';

void main(List<String> args) {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Home(),
      ),
    );
  }
}
