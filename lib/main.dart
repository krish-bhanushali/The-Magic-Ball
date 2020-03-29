import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Center(
            child: Text('MAGIC BALL',style: TextStyle(
              fontFamily: 'RobotoMono' ,
              color: Colors.black87,
            ),),
          ),
        ),
        body: Prediction(),
        backgroundColor: Colors.white,
      ),
    ));

class Prediction extends StatefulWidget {
  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  int answers =1;
  void changeAns(){
    setState(() {
      answers = Random().nextInt(5) + 1;
    });

}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Center(

          child: Row(
              children: <Widget>[

                Container(
                    margin: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                    child: Image.asset('images/ball$answers.png', width: 300.0, height: 300.0,)),



              ]
          ),
        ),
        SizedBox(
          height: 80.0,
          child: Center(child: Text('Click Below and Ask a question',
            style: TextStyle(
              fontFamily: 'RobotoMono' ,
              color: Colors.black87,
            ),)),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeAns();
                }
                , child: Image.asset('images/rush.png',width: 200.0,height: 200.0,),),
            )
          ],
        )



      ],

    );
  }

}