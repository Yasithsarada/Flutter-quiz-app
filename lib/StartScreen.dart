import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(/*void Function() startQuiz,*/ this.startQuiz, {key})
      : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    print('called');
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("hhhhhhhhhhh")
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(186, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Learn the flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: const Color.fromARGB(241, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text(
                "start quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
