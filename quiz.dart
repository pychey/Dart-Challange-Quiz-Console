import 'dart:io';
import 'question.dart';
import 'answer.dart';

class Quiz {
  List<Question> questions = [];
  List<Answer> answers = [];

  void addAnswer(Answer answer) => answers.add(answer);

  int get score => answers.where((a) => a.isGoodAnswer).length;

  void run() {
    print('Welcome to the Quiz!');

    for (int i = 0; i < questions.length; i++) {
      print('\nQuestion ${i + 1}: ${questions[i].title}');
      
      for (int j = 0; j < questions[i].choices.length; j++) {
        print('${j + 1}. ${questions[i].choices[j]}');
      }
      
      stdout.write('\nEnter your choice: ');
      int choice = int.parse(stdin.readLineSync()!);

      Answer answer = Answer(answerChoice: questions[i].choices[choice - 1], question: questions[i]);

      if (answer.isGoodAnswer) print('\nCorrect!');
      else print('\nIncorrect!');

      addAnswer(answer);
    }

    print('\nScore: ${score}/${questions.length}');
  }
}