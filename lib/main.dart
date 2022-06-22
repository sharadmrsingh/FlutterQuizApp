import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
//void main(){
//runApp(MyApp());
//}
//This below is shothand for runninh 1 line expressions inside main 
void main() => runApp(MyApp());
/*
class MyApp extends StatelessWidget{
  var questionIndex=0;
  void answerQuestion(){
    //print("Answer Qustion!");
    questionIndex=questionIndex+1;
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context){
    var questions=['What \'s your favourite color?','What \'s your favourite food?',];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        //Text('The question!'),
        Text(
          questions[questionIndex],
        ),
        RaisedButton(
          child: Text('Answer1'),
          onPressed: answerQuestion,),
        RaisedButton(
          child: Text('Answer2'),
          onPressed: () => print("Answer 2 chosen!"),),
        RaisedButton(
          child: Text('Answer3'),
          onPressed: () {
            // ...
            print("Answer 3 chosen!");
          },)
          ],
          ),
    ),
    );
  }
}*/
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}
class _MyAppState extends State<MyApp>{
//final questions;
    //var questions=[
      final _questions=const[
      {
      'questionText':'What \'s your favourite color?',
      'answers':[{'text':'Black','score':10},
      {'text':'Red','score':5},
      {'text':'Green','score':3},
      {'text':'White','score':1},
      ],
      },
      {
      //'What \'s your favourite food?',
      'questionText':'What \'s your favourite animal?',
      'answers':[
        {'text':'Rabbit','score':3},
        {'text':'Elephant','score':11},
        {'text':'Snake','score':5},
        {'text':'Lion','score':9},
        ],
      },
      {
      //'What \'s your favourite Programming Language',
      'questionText':'What \'s your favourite Programming Language?',
      'answers':[
        {'text':'PHP','score':1},
        {'text':'Java','score':1},
        {'text':'Python','score':1},
        {'text':'JavaScript','score':1},
        ],
      },
      {
      'questionText':'What \'s your favourite Food?',
      'answers':[
        {'text':'Paneer','score':1},
        {'text':'Rajma','score':2},
        {'text':'Burger','score':5},
        {'text':'Chola Bhatura','score':3},
        ],
      },
      ];
     var _questionIndex=0;
     var _totalScore=0;
      void _resetQuiz(){
        setState(() {
          _questionIndex=0;
          _totalScore=0;
        });
      }

      void _answerQuestion(int score){
        _totalScore=_totalScore+score;
    //var questions;
     setState(() {
      _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
    if(_questionIndex<_questions.length)
    {
      print("We have more Questions!");
    }
    else{
      print("No more questions!");
    }
    //print("Answer Qustion!");
  }

   @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex<_questions.length?
      Quiz(
        answerQuestion:_answerQuestion,
        questionIndex:_questionIndex,
        questions: _questions,
      )
      :Result(_totalScore,_resetQuiz),
    ),
    );
  }
}
       /*Column(children: [
        Question(
          //questions[_questionIndex],
          questions[_questionIndex]['questionText'] as String,
        ),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
        return Answer(_answerQuestion,answer);
  }).toList()*/
        //Answer(_answerQuestion),
        //Answer(_answerQuestion),
        //Answer(_answerQuestion),
        //Text('The question!'),
        //Text(
          //questions[questionIndex],
        //),
        /*RaisedButton(
          child: Text('Answer1'),
          onPressed: _answerQuestion,),
        RaisedButton(
          child: Text('Answer2'),
          //onPressed: () => print("Answer 2 chosen!"),),
          onPressed: _answerQuestion,),
        RaisedButton(
          child: Text('Answer3'),
         // onPressed: () {
            // ...
            //print("Answer 3 chosen!");
          //},)
          onPressed: _answerQuestion,),*/
          //)
          //:Center(child: Text('You did it!'))
          