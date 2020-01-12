import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  //final Function answerQuestion;
  final String answerText;
 // final int score;
 // final Function func;

  Answer(this.selectHandler,this.answerText);
  //Answer(this.answerQuestion, this.func, this.answerText, this.score);

  // void selectHandler() {
  //   answerQuestion(score);
  //   print('abc');
  // }
  // void anotherFunc() {
  //   print('${score}');
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,

      ),
    );
  }
}