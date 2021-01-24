import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s you favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s you favorite animal?',
      'answer': ['Cat', 'Dog', 'Rabbit', 'Cow'],
    },
    {
      'questionText': 'What\'s you favorite instructor?',
      'answer': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions)
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
