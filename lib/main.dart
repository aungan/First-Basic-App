import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

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
  var _totalScore = 0;
  var _questions = [
    {
      'questionText': 'what is your favorite color?',
      'answer': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite animal?',
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'snake', 'score': 5},
        {'text': 'rabbit', 'score': 1},
      ],
    },
    {
      'questionText': 'which is your fav chocolate?',
      'answer': [
        {'text': 'milky bar', 'score': 10},
        {'text': 'diary milk', 'score': 5},
        {'text': '5-star', 'score': 1},
      ],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + _questions[_questionIndex]['score'];
    });

    //print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('my first app'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore)),
    );
  }
}
