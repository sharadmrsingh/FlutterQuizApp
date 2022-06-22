import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
//import './main.dart';
class Answer extends StatelessWidget{
  //String QuestionText;
  final String answerText;
  final VoidCallback selectHandler;
  //Answer(this.selectHandler);
  Answer(this.selectHandler,this.answerText);
  //@Override
  Widget build(BuildContext Context){
    //return Text(QuestionText);
    return Container(
      width:double.infinity,
      //By adding this below margin:EdgeInsets.all(10), there's margin in answers before that all answers buttons were closer.And this was not shown in code.
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        //child: Text('Answer 1'),
        child: Text(answerText),
        //onPressed: null,
        onPressed: selectHandler,
      ),
    );
  }
}