import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final Function() x;

  const Answers(this.x,this.answerText);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: x, child: Text(answerText,style: TextStyle(color: w,fontSize: 20),)),
      );
  }
}
