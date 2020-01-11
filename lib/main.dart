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
              onPressed: ()=>print('Answer 2 chosen.'),
            ),
            // the function is a anonymous function that cant be called from outside, it'll be executed only once.
            //and also it is a function, not the return value of the function and would not execute immediately.

            RaisedButton(
              child: Text('Answers 3'),
              onPressed: (){
                //...
                print('and then answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
