import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
//setState is a function that forces Flutter to re-render the user interface,but not the entire user interface
//it updates widget by calling its build method where it calls setState

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
     
    var questions = [
      {
        'questionText': 'What is your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What is your favorite animal?',
        'answers': ['Cat', 'Dog', 'Rabbit', 'Lion']
      },
      {
        'questionText': 'Who is your favorite singer?',
        'answers': ['Adele', 'Rihanna', 'Eminem', 'Lady Gaga']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers']as List<String>).map((answer){
              return Answer(_answerQuestion,answer);

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
        ),
      ),
    );
  }
}
