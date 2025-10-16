import 'question.dart';

class Answer {
  String answerChoice;
  Question question;

  Answer({ required this.answerChoice, required this.question });

  bool get isGoodAnswer => question.goodChoice == answerChoice;
}