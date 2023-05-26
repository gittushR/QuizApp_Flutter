import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(255, 212, 174, 241),
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(145, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text("Start quiz!"),
            icon: const Icon(Icons.arrow_circle_right),
          )
        ],
      ),
    );
  }
}
