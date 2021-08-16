import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIdx = 0;

  void pressIt() {
    setState(() {
      _questionIdx = _questionIdx + 1;
      print(_questionIdx);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your name?',
      'what\'s your age?',
      'where are you from?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
            ),
            body: Column(
              children: [
                RaisedButton(
                  onPressed: pressIt,
                  child: Question(questions[_questionIdx]),
                ),
                Answer(pressIt),
              ],
            )));
  }
}
