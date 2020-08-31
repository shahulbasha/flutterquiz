import 'package:flutter/material.dart';
import 'package:flutter_demo/question.dart';
import 'answer.dart';
import 'question.dart';

class Process extends StatelessWidget {
  final Function _answerQuestion;
  final List<Map<String, Object>> _question;
  final int questionIndex;
  Process(this._answerQuestion, this._question, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(_question[questionIndex]['questionText']),
          ...(_question[questionIndex]['answers'] as List).map((answerText) {
            return Answer(answerText, _answerQuestion);
          }).toList()
        ],
      ),
    );
  }
}
