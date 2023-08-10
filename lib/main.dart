import 'package:flutter/material.dart';
import 'package:quiz_app1/answers.dart';
import 'package:quiz_app1/questions.dart';
import 'package:quiz_app1/quiz.dart';
import 'package:quiz_app1/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color w = Colors.white;
Color b = Colors.black;
bool isSwitched = false;

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'Blue', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answerText': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Rabbet', 'score': 30},
        {'text': 'Cat', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite Subject?',
      'answerText': [
        {'text': 'Math', 'score': 10},
        {'text': 'English', 'score': 20},
        {'text': 'Science', 'score': 30},
        {'text': 'Arabic', 'score': 40}
      ]
    }
  ];

  questionAnswer(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        title: Text("Quiz App", style: TextStyle(color: w)),
        actions: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if(isSwitched == true) { b=Colors.white;w=Colors.black; }
                if(isSwitched == false) { b=Colors.black;w=Colors.white; }
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.black,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(50.0),
        child: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, questionAnswer)
            : Result(resetQuiz, _totalScore),
      ),
    );
  }
}
