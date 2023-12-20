import 'package:adv_flutter/components/answer_button.dart';
import 'package:adv_flutter/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question_screen extends StatefulWidget {
  Question_screen({super.key, required this.onSelectAnwer});
  @override
  State<Question_screen> createState() => _Question_screen();

  void Function(String answer) onSelectAnwer;
}

final List<String> selectedAnswers = [];

class _Question_screen extends State<Question_screen> {
  var currentIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      currentIndex++;
    });
    widget.onSelectAnwer(answer);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffledAnswers.map((item) {
              return AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
