import 'package:adv_flutter/data/questions.dart';
import 'package:adv_flutter/questionn_summury.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswers});

  List<String> chosenAnswers;

  List<Map<String, Object>> get summuryData {
    List<Map<String, Object>> summury = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summury.add({
        'question-index': i,
        'question': questions[i].text,
        'user-answer': chosenAnswers[i],
        'correct-answer': questions[i].answers[0]
      });
    }
    return summury;
  }

  Widget build(BuildContext context) {
    var noOfQuestions = questions.length;
    final noOfCorrectAnswers = summuryData
        .where((element) => element['user-answer'] == element['correct-answer'])
        .length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                "You answered $noOfCorrectAnswers questions out of $noOfQuestions questions"),
            const SizedBox(
              height: 20,
            ),
            QuestionSummury(summuryData: summuryData),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz !"),
            )
          ]),
        ));
  }
}
