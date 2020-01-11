import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

//shorthand notion for function that only have one and exactly one expression  (below)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second Flutter App'),
        ),
        body:Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              child: Text('Answers 1'),
              onPressed: answerQuestion,
              //onPressed requires a function, pass the name of the function,not the result of the function to onPressed: answerQuestion(), 
              //so it wont be executed when the code was parsed from top to bottom
        
            ),
            RaisedButton(
              child: Text('Answers 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answers 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
