import 'package:flutter/cupertino.dart';
import 'package:quizzler/question_bank.dart';
import 'package:quizzler/scorekeeper.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  QuestionBank questionBank = QuestionBank();

  void increaseQuestionCount(BuildContext context) => {
        if (questionBank.questionNumber < questionBank.test.length - 1)
          questionBank.questionNumber++
        else
          {
            Alert(context: context, type: AlertType.success, title: "Finished!", desc: "You've reached the end of the quiz.").show(),
            questionBank.questionNumber = 0,
            ScoreKeeper.scoreBoard.clear(),
          }
      };

  void checkAnswer(bool answer, BuildContext context) {
    if (answer == questionBank.test[questionBank.questionNumber].answer) {
      ScoreKeeper.rightAnswer();
    } else {
      ScoreKeeper.wrongAnswer();
    }
    increaseQuestionCount(context);
  }
}
