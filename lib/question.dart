import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String  questionText ;
  //final tells Dart that this value will never change after its initialization
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}