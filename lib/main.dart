import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz_app/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arafat',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Replace with your desired color
      ),
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}
