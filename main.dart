import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import 'login_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool userIsLoggedIn = false; // Change this to determine if the user is logged in

    return MaterialApp(
      title: 'Arafat',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Replace with your desired color
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: userIsLoggedIn ? '/quiz' : '/login', // Set the initial route based on the condition
      routes: {
        '/login': (context) => LoginScreen(),
        '/quiz': (context) => QuizScreen(),
      },
    );
  }
}

