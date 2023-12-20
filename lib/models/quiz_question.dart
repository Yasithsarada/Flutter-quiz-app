class QuizQuestion {
  final String text;
  final List<String> answers;

  QuizQuestion(this.text, this.answers);

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

  void myFunction() {
    print("Hello from myFunction!");
  }
}
