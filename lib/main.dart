import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final questions = const [
    {
      "questionText": "Best Hack \'n slash game?",
      "Answer": [
        {"text": "Devil may cry", "score": 10},
        {"text": "Persona", "score": 0},
        {"text": "DarkSouls", "score": 6},
      ]
    },
    {
      "questionText": "Which kind of game Nier Automata belong to?",
      "Answer": [
        {"text": "Shooter", "score": 0},
        {"text": "RPG", "score": 10},
        {"text": "Rhythm", "score": 0},
      ]
    },
    {
      "questionText": "Who\'s the best Waifu?",
      "Answer": [
        {"text": "Tifa Lockhart", "score": 10},
        {"text": "Dante Sparda", "score": 1},
        {"text": "Yorha No.9 Type S", "score": 1},
      ]
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex > questions.length) {
      print("out of question");
    }
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
