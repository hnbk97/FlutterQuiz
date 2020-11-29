import "package:flutter/material.dart";
import "./question.dart";
import './answerQuestion.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["Answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
