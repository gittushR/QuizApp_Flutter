import 'package:flutter/material.dart';
import 'package:secondapp/data/questions.dart';
import 'package:secondapp/result_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswers});
  List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question-index": i,
        "question": questions[i].text,
        "user-answer": chosenAnswers[i],
        "correctAnswer": questions[i].answers[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var summary = getSummaryData();
    int correctAnswers = summary
        .where((data) => data["user-answer"] == data["correctAnswer"])
        .length;
    int totalQuestions = questions.length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "You answered $correctAnswers out of $totalQuestions questions correctly!"),
              const SizedBox(height: 20),
              ResultSummary(summaryData: summary),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text("Restart quiz"),
              )
            ],
          ),
        ));
  }
}
