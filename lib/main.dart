import 'package:flutter/material.dart';
import 'package:flutter_second_round/result.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }

//shorthand notion for function that only have one and exactly one expression  (below)

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
//_MyAppState is a syntax that turns public class to a private class

  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},

      ]
    },
    {
      'questionText': 'Who is your favorite singer?',
      'answers': [
        {'text': 'Adele', 'score': 7},
        {'text': 'Rihanna', 'score': 5},
        {'text': 'Eminem', 'score': 3},
        {'text': 'Lady Gaga', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
//setState is a function that forces Flutter to re-render the user interface,but not the entire user interface
//it updates widget by calling its build method where it calls setState

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
