import 'package:flutter/material.dart';
import './question.dart';

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
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color?',
      'what is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: _answerQuestion,
              //() => print('Answer 3 chosen');
              // can be used to assign a function to onPressed
            )
          ],
        ),
      ),
    );
  }
}
