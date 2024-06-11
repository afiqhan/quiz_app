final Function answerQuestion;

  final int questionIndex;

  const Quiz(
    {Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex})
    : super(key: key);

    @override
    Widget build(BuildContext context){
      return Column(
        children: [
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer){
            return Answer(
              () => answerQuestion(answer['score']), answer['text'].toString()
            );
          }).toList()
        ],
      );
    }

}


import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final Function resetHandler;

  Result (this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resulText  = 'You did it ..!';

    if(resultScore <=8){
      resulText = 'You are innocent';
    }else if(resultScore <=12){
      resulText = 'Pretty likeable ..!';
    }else if(resultScore <=16){
      resulText = 'You are strange ..!';
    }else{
      resulText = 'You are so bad..!';
    }
    return resulText;
  }

  @override
  Widget build (BuildContext context){
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: ()=> resetHandler(), child: const Text('Restart Quiz'))
        ],
      ),

    );
  }
}

  final int questionIndex;

  const Quiz(
    {Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex})
    : super(key: key);

    @override
    Widget build(BuildContext context){
      return Column(
        children: [
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer){
            return Answer(
              () => answerQuestion(answer['score']), answer['text'].toString()
            );
          }).toList()
        ],
      );
    }




import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final Function resetHandler;

  Result (this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resulText  = 'You did it ..!';

    if(resultScore <=8){
      resulText = 'You are innocent';
    }else if(resultScore <=12){
      resulText = 'Pretty likeable ..!';
    }else if(resultScore <=16){
      resulText = 'You are strange ..!';
    }else{
      resulText = 'You are so bad..!';
    }
    return resulText;
  }

  @override
  Widget build (BuildContext context){
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: ()=> resetHandler(), child: const Text('Restart Quiz'))
        ],
      ),

    );
  }
}