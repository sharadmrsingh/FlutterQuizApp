import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;


  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  //@Override
  Widget build(BuildContext Context){
    //return Text(QuestionText);
    return Column(children: [
        Question(
          //questions[_questionIndex],
          //questions[questionIndex]['questionText'] as String,
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
        //return Answer(answerQuestion,answer['text'] as String);
        return Answer(()=>answerQuestion(answer['score']),answer['text'] as String);
  }).toList()
      ],
      );
  }
}