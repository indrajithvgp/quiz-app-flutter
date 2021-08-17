import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import './quiz.dart';
// import './answer.dart';

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


  final _questions = const [
    {"question":"what is your nationality?",
      "answers": [{"text":"indian", "score":80}, {"text":"iranian", "score":90}]
    },
    {"question":"what is your fav food?",
      "answers": [{"text":"chicken", "score":80}, {"text":"vadai", "score":100}, {"text":"obatta", "score":99}]
    },
    {"question":"what is your zodiac sign?",
      "answers": [{"text":"leo", "score":80}, {"text":"taurus", "score":100}]
    }
  ];

  var _questionIdx = 0;

  void _answerQuestion() {
    
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
            ),
            body: 
            Quiz(questionIdx: _questionIdx, 
            questions: _questions, 
            answerQuestion: _answerQuestion)));
  }
}
