import 'package:flutter/material.dart';
import 'package:flutter_demo/question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
 var question=['What Sports does Kohli Play?','What Sports does Mbappe Play?'];
 var questionIndex=0;
 void answerQuestion(){
   setState(() {
     questionIndex+=1;
   });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Sports Quiz'),),
      body: Column(children: [
        Question(question[questionIndex]),
        RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
        RaisedButton(child: Text('Answer 2'),onPressed: answerQuestion,),
        RaisedButton(child: Text('Answer 3'),onPressed: answerQuestion,),
      ],),
    ),);
  }
}