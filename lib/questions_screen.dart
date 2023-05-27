import 'package:flutter/material.dart';
import 'package:secondapp/answer_button.dart';

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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Question to be asked',
              style: TextStyle(color: Colors.white)),
          const SizedBox(height: 20),
          AnswerButton("answerText1", () {}),
          AnswerButton("answerText2", () {}),
          AnswerButton("answerText3", () {}),
        ],
      ),
    );
  }
}
