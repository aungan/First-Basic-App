import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your favorite color?',
        'answer': ['red', 'blue', 'black'],
      },
      {
        'questionText': 'what is your favorite animal?',
        'answer': ['rabbit', 'lion', 'elephant'],
      },
      {
        'questionText': 'which is your fav chocolate?',
        'answer': ['dairy milk', 'milky bar', '5-star'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
