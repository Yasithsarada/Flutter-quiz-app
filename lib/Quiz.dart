import 'package:adv_flutter/StartScreen.dart';
import 'package:adv_flutter/Question_screen.dart';
import 'package:adv_flutter/data/questions.dart';
import 'package:adv_flutter/results_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  // Widget? activeState;
  String activeState = 'Start-screen';
  // @override
  // void initState() {
  //   activeState = StartScreen();
  //   super.initState();
  // }

  void switchScreen() {
    setState(
      () => activeState = 'Question-screen',
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      print("***************************************");
      // setState(() {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => ResultsScreen()));
      // });
      setState(() {
        activeState = 'Result-screen';
      });
      print('done');
    }
  }

  Widget build(BuildContext context) {
    Widget screen = StartScreen(switchScreen);
    // final scWigt = activeState == 'Start-screen'
    //     ? StartScreen(switchScreen)
    //     : Question_screen();

    if (activeState == 'Question-screen') {
      screen = Question_screen(
        onSelectAnwer: chooseAnswer,
      );
    }
    if (activeState == 'Result-screen') {
      screen = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
      // print('thissssssss');
    }
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ]),
        ),
        child: screen,
      ),
    );
  }
}
