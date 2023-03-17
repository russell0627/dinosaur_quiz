class Question<T> {
  final String question;
  final List<T> options;
  final List<T> answers;
  final String? imageFilename;

  const Question({
    required this.question,
    required this.options,
    required this.answers,
    this.imageFilename,
  });

  bool get hasImage => imageFilename != null;
}

enum QuestionType {
  dinosaur,
  space,
  animal,
  plant,
}