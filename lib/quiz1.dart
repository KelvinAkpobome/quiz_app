import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

class Quiz1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }

}


var finalScore = 0;
var questionNumber = 0;
var quiz = new AnimalQuiz();

class Quiz1State extends State<Quiz1>{
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: ()async => false,
    child: Scaffold(


    body: new Container(
    margin: const EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    child: new Column(
    children: <Widget>[

    new Padding(padding: EdgeInsets.all(20.0)),

    new Container(
    alignment: Alignment.centerRight,
    child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
    style: new TextStyle(
    fontSize: 22.0
    ),)


    new Text("Score: $finalScore",
style: new TextStyle(
    fontSize: 22.0
    ),)
    ],
    ),
    )

    new Padding(padding: EdgeInsets.all(10.0)),

    new Image.asset(
    "image/${quiz.image[questionNumber]}.jpg"
    ),

    new Padding(padding: EdgeInsets.all(10.0)),

    new Text(quiz.questions[questionNumber]
    style: new TextStyle(
    fontSize: 20.0
    ),)
    
    new Padding(padding: EdgeInsets.all(10.0)),

    new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[


      new MaterialButton(
      minWidth: 120.0,
      color: Colors.green,
    onPressed: null,
    child: new Text(quiz.choices [questionNumber](0),
    style: new TextStyle(
    fontSize: 20.0,
    color: Colors.white
    ),
    ),


      )
    ],
    )
    ],
    
    
    ),
    ),
    ),
  };
}
void updateQuestion (){

}