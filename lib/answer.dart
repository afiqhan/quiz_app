import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  /*
  how much should we need money to buy Cookies
   */
  final Function selectHandler;
  final String answerText;
  Answer( this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text(answerText),
        onPressed: ()=>selectHandler(),
      ),
    );
  }
}