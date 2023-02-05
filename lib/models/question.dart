class Question {
  final String question;
  final Answer answer;

  const Question(this.question, this.answer);
}

enum Answer {
  yes,
  no,
  none,
}
