import 'package:flutter/material.dart';
//import './main.dart';
class Question extends StatelessWidget{
  //String QuestionText;
  //This is giving Code but giving error so making this as below.final String questionText;
  final String questionText;
  Question(this.questionText);
  //@Override
  Widget build(BuildContext Context){
    //return Text(QuestionText);
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),

    );
  }
}