import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionIdentifier extends StatelessWidget {
  QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrect});

  int questionIndex;
  bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final int questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 63, 154, 228)
            : Color.fromARGB(255, 217, 51, 39),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
