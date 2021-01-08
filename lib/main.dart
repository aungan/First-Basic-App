import 'package:Hello_world/quiz.dart';
import 'package:Hello_world/result.dart';
import 'package:flutter/material.dart';
import './result.dart';

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
  var _questions = [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
              : Result()),
    );
  }
}
