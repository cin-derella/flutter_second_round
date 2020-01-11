import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text'],);
        }).toList(),
        // RaisedButton(
        //   child: Text('Answers 1'),
        //   onPressed: _answerQuestion,
        //   //onPressed requires a function, pass the name of the function,not the result of the function to onPressed: answerQuestion(),
        //   //so it wont be executed when the code was parsed from top to bottom
        // ),
        // RaisedButton(
        //   child: Text('Answers 2'),
        //   onPressed: () => print('Answer 2 chosen.'),
        // ),
        // // the function is a anonymous function that cant be called from outside, it'll be executed only once.
        // //and also it is a function, not the return value of the function and would not execute immediately.

        // RaisedButton(
        //   child: Text('Answers 3'),
        //   onPressed: () {
        //     //...
        //     print('and then answer 3 chosen');
        //   },
        // ),
      ],
    );
  }
}
