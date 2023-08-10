import 'package:flutter/material.dart';
import 'main.dart';
class Questions extends StatelessWidget {
  final String questionText;
  const Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(questionText,style: TextStyle(fontSize: 20,color: b,fontWeight: FontWeight.bold)));
  }


}
