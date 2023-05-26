import 'package:flutter/material.dart';
import 'package:secondapp/start_screen.dart';
import 'package:secondapp/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;
  @override
  void initState() {
    super.initState();
    currentScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 94, 13, 157),
                Color.fromARGB(255, 35, 3, 60)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
