import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';
import 'main.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final  Function questionAnswer;
 // final questions;
  const Quiz(this.questionIndex,this.questions,this.questionAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionText'].toString()),
        const SizedBox(height: 20.0),
        ...(questions[questionIndex]['answerText'] as List<Map<String,Object>>).map((answer){
          return Answers(()=> questionAnswer(int.parse(answer['score'].toString())), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
