import 'package:flutter/material.dart';
import 'package:quizzler/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Questions(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Questions(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];

  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => nextQuestion(),
          width: 120,
        )
      ],
    ).show();
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      //
      //  print('Now returning true');
      _onAlertButtonPressed('the end of the answers');
      return true;
    } else {
      reset();
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
