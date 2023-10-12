import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(
    this._summaryData, {
    super.key,
  });

  final List<Map<String, Object>> _summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: _summaryData
              .map(
                (data) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionIdentifier(
                        questionIndex: (data['question_index'] as int),
                        isCorrectAnswer:
                            (data['user_answer'] == data['correct_answer']),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              data['question'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 182, 143, 225),
                              ),
                            ),
                            Text(
                              data['correct_answer'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 199, 213, 255),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

