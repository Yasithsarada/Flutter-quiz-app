import 'package:flutter/material.dart';
import 'package:adv_flutter/results_screen.dart';

class QuestionSummury extends StatelessWidget {
  QuestionSummury({super.key, required this.summuryData});
  List<Map<String, Object>> summuryData = [];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summuryData
              .map((data) =>

                  


                  //mapped data..

                  Row(
                    children: [
                      Text(((data['question-index'] as int) + 1).toString()),
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['question'] as String),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['user-answer'] as String),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['correct-answer'] as String),
                          ],
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
