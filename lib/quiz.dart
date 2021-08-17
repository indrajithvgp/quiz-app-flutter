import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIdx;

  Quiz(
      {@required this.questionIdx,
      @required this.questions,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: questionIdx < questions.length
          ? Column(
              children: [
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Question(questions[questionIdx]['question']),
                ),
                ...(questions[questionIdx]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(answerQuestion, answer);
                }).toList()
              ],
            )
          : Result(),
    );
  }
}
