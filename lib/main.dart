import 'package:_quiz_app/quiz.dart';
import 'package:_quiz_app/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what \'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1},
      ],
    },
    {
      'questionText': 'what \'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Tiger', 'score': 10}, // change the score
        {'text': 'Lion', 'score': 8}, // change the score
        {'text': 'Rabbit', 'score': 3}, // change the score
      ],
      //['Cat', 'Tiger','Lion', 'Rabbit']
    },
    {
      'questionText': 'what \'s your favourite instructor?',
      'answers': [
        {'text': 'Alan', 'score': 8}, // change the score
        {'text': 'David', 'score': 5}, // change the score
        {'text': 'Richard', 'score': 1}, // change the score
        {'text': 'Steven', 'score': 3}, // change the score
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      // _questionIndex = (_questionIndex < question.length - 1) ? _questionIndex + 1 : 0;
      if (_questionIndex < _questions.length) {
        print('We have more question');
      } else {
        print(_questionIndex);
        print('we finish the quiz');
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Quiz App'),
        ),
        body: _questionIndex < _questions.length
        ?Quiz(
          questions: _questions, 
          answerQuestion: _answerQuestion, 
          questionIndex: _questionIndex
          )
            // ? Column(
            //     children: [
            //       Question(
            //         _questions[_questionIndex]['questionText'] as String,
            //       ),
            //       ...(_questions[_questionIndex]['answers'] as List<String>)
            //           .map((answer) {
            //         return Answer(_answerQuestion, answer);
            //       }).toList(),
            //     ],
            //   )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}