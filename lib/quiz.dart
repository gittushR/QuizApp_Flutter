import 'package:flutter/material.dart';
import 'package:secondapp/data/questions.dart';
import 'package:secondapp/start_screen.dart';
import 'package:secondapp/questions_screen.dart';
import 'package:secondapp/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> chosenAnswers = [];
  var currentScreen = 'startScreen';

  void switchScreen() {
    setState(() {
      currentScreen = "questionsScreen";
    });
  }

  void getChosenAnswers(String answer) {
    chosenAnswers.add(answer);
    if (chosenAnswers.length == questions.length) {
      setState(() {
        currentScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (currentScreen != "startScreen") {
      screenWidget = QuestionsScreen(onSelectAnswer: getChosenAnswers);
    }
    if (currentScreen == "results-screen") {
      screenWidget = ResultsScreen(chosenAnswers: chosenAnswers);
    }
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
          child: screenWidget,
        ),
      ),
    );
  }
}
