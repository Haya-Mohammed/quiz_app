import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() reset;
  final int resultScore;
  const Result(this.reset, this.resultScore);

   String get resultPhrase{
     String resultPhrase;
     if(resultScore>=70) {
       resultPhrase="you are so awesome!";
     } else if(resultScore>=40) {
       resultPhrase="you are good!";
     } else {
       resultPhrase="you are bad!";
     }

     return resultPhrase;
   }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Text("Score : $resultScore",style: TextStyle(fontSize: 25,color: b,fontWeight: FontWeight.bold)),
    const SizedBox(height: 20),
    Text(resultPhrase,style: TextStyle(fontSize: 25,color: b)),
    const SizedBox(height: 500),
    TextButton(onPressed: reset, child: const Text("Restart the App",style: TextStyle(fontSize: 30,color: Colors.blue))),
      ],
    );
  }
}
