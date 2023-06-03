import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data["question-index"] as int) + 1).toString()),
                  Expanded(
                    child: Column(children: [
                      Text(data["question"] as String),
                      const SizedBox(width: 5),
                      Text(data["user-answer"] as String),
                      Text(data["correctAnswer"] as String),
                    ]),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
