import 'dinosaur.dart';
import 'space_object.dart';

class Question<T> {
  final String question;
  final List<T> options;
  final T answer;
  final String? imageFilename;

  const Question({
    required this.question,
    required this.options,
    required this.answer,
    this.imageFilename,
  });

  bool get hasImage => imageFilename != null;
}

enum QuestionType {
  dinosaur,
  space
}

const q = Question(
  question: "The diet classification for a triceratops is:",
  options: Diet.values,
  answer: Diet.herbivore,
);