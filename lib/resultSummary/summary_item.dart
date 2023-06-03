import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secondapp/resultSummary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    bool isCorrect = itemData["user-answer"] == itemData["correctAnswer"];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: itemData['question-index'] as int,
              isCorrect: isCorrect),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  itemData['user-answer'] as String,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 226, 119, 219),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  itemData['correctAnswer'] as String,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 166, 201, 226),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
