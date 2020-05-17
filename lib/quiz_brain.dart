import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Phoebe is a twin', true),
    Question('Chandler\'s middle name is Marriot', true),
    Question('Ross took Rachel to her prom', false),
    Question('Rachel\'s sisters are called Jill and Amy', true),
    Question('Someone stole Ross\' sandwich', true),
    Question('Phoebe can ride a bike', false),
    Question('Phobe has an elder brother', false),
    Question('Joey has 10 sisters', false),
    Question('Joey is an actor', true),
    Question('Monica used to be fat', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
