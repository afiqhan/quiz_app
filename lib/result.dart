import 'package:flutter/material.dart';

  class Result extends StatelessWidget {
    final int resultScore;
    final Function resetHandler;

    //const result 
    Result(this.resultScore, this.resetHandler);

    String get resultPhrase {
      String resultText = 'You did it ..!';
      if (resultScore <=8) {
        resultText = 'You are innocent';
        } else if (resultScore<=12) {
          resultText = 'Pretty Likeable..!';
        } else if (resultScore<=16) {
          resultText = 'You are Strange..!';
        } else {
          resultText = 'You are so bad..!';
        }    
        return resultText;
        }

        
        
        @override
        Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Text(resultPhrase, 
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
       
       ElevatedButton(
        onPressed: () => resetHandler(),
        child:Text('Restart Quiz'),
       )
       
        ],
      ),
    );
  }
  }
