import 'package:flutter/material.dart';
import 'package:secondapp/answer_button.dart';
import 'package:secondapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          AnswerButton(currentQuestion.answers[0], () {}),
          AnswerButton(currentQuestion.answers[1], () {}),
          AnswerButton(currentQuestion.answers[2], () {}),
          AnswerButton(currentQuestion.answers[3], () {}),
        ],
      ),
    );
  }
}
