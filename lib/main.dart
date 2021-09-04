import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dicee App'),
          backgroundColor: Colors.brown,
        ),
        body: DicePage(),
      ),
    )
  );
}


class DicePage extends StatefulWidget{

  @override
  _DicePageState createState() => _DicePageState();

}


class _DicePageState extends State<DicePage>{

  int leftDice = 1;
  int rightDice = 1;

  void changeDice(){

    setState(() {


       leftDice = Random().nextInt(6) + 1 ;
       rightDice = Random().nextInt(6) + 1 ;

       //TODO Print Random Number


    });


  }



  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(

        children:<Widget> [
          Expanded(
              child:
              // TODO Change the FlatButton to TextButton
              FlatButton(
                child: Image.asset('images/dice$leftDice.png'),
                onPressed: (){
                changeDice();
                },
              )
          ),

          Expanded(
              child:
              // TODO Change the FlatButton to TextButton
              FlatButton(
                child: Image.asset('images/dice$rightDice.png'),
                onPressed: (){
                  changeDice();
                },
              )
          )
        ],

      ),







    );
  }




}







