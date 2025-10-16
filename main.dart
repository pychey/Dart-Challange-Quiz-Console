import 'question.dart';
import 'quiz.dart';

void main() {
  Quiz quiz = Quiz();

  quiz.questions.add(Question(title: 'Capital of France?', choices: ['Paris', 'Phnom Penh', 'New York', 'Kampot'], goodChoice: 'Paris'));
  quiz.questions.add(Question( title: '2 + 2 = ?', choices: ['2', '4', '5', '6'], goodChoice: '4' ));

  quiz.run();
}