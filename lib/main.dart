import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// void main() => (MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'white', 'score': 8},
        {'text': 'blue', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'bird', 'score': 8},
        {'text': 'cat', 'score': 5},
      ]
    },
    {
      'questionText': 'Who is the cutest baby?',
      'answers': [
        {'text': 'Kenny', 'score': 10},
        {'text': 'Ben', 'score': 10},
        {'text': 'Ken', 'score': 10},
      ]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
