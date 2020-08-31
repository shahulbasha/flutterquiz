import 'package:flutter/material.dart';
import 'package:flutter_demo/process.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _question = [
    {
      'questionText': 'What Sports does Kohli Play?',
      'answers': ['Football', 'Cricket', 'Tennis'],
      'answer': 'Cricket'
    },
    {
      'questionText': 'What Sports does Mbappe Play?',
      'answers': ['Football', 'Cricket', 'Tennis'],
      'answer': 'Football'
    },
  ];

  var questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sports Quiz'),
        ),
        body: (questionIndex < _question.length)
            ? Process(_answerQuestion, _question, questionIndex)
            : Center(
                child: Column(
                children: [
                  Text('You did it'),
                  FlatButton(
                    onPressed: resetQuiz,
                    child: Text('Reset'),
                    color: Colors.black,
                    textColor: Colors.white,
                  )
                ],
              )),
      ),
    );
  }
}
