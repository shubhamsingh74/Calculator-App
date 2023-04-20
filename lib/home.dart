import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'Constants/calbutton.dart';
import 'Constants/color.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var userInput='';
  var answer ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(userInput,style:TextStyle(fontSize: 30, color: Colors.white),),
                      Text(answer,style:TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalButton(title: 'AC', color: orange, onPress: (){
                             userInput = ' ';
                             answer='';
                             setState(() {

                             });
                        },),
                        CalButton(title: '+/-', color: orange, onPress: (){
                          userInput+='Ac';
                          setState(() {

                          });
                        },),
                        CalButton(title: '%', color: orange, onPress: (){
                          userInput+='%';
                          setState(() {

                          });
                        },),
                        CalButton(title: '/', color: orange, onPress: (){
                          userInput+='/';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        CalButton(title: '7', color: grayColor, onPress: (){
                          userInput+='7';
                          setState(() {

                          });
                        },),
                        CalButton(title: '8', color: grayColor, onPress: (){
                          userInput+='8';
                          setState(() {

                          });
                        },),
                        CalButton(title: '9', color: grayColor, onPress: (){
                          userInput+='9';
                          setState(() {

                          });
                        },),
                        CalButton(title: 'X', color: orange, onPress: (){
                          userInput+='X';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        CalButton(title: '4', color: grayColor, onPress: (){
                          userInput+='4';
                          setState(() {

                          });
                        },),
                        CalButton(title: '5', color: grayColor, onPress: (){
                          userInput+='5';
                          setState(() {

                          });
                        },),
                        CalButton(title: '6', color: grayColor, onPress: (){
                          userInput+='6';
                          setState(() {

                          });
                        },),
                        CalButton(title: '-', color: orange, onPress: (){
                          userInput+='-';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        CalButton(title: '1', color: grayColor, onPress: (){
                          userInput+='1';
                          setState(() {

                          });
                        },),
                        CalButton(title: '2', color: grayColor, onPress: (){
                          userInput+='2';
                          setState(() {

                          });
                        },),
                        CalButton(title: '3', color: grayColor, onPress: (){
                          userInput+='3';
                          setState(() {

                          });
                        },),
                        CalButton(title: '+', color: orange, onPress: (){
                          userInput+='+';
                          setState(() {

                          });
                        },),

                      ],
                    ),
                    Row(
                      children: [
                        CalButton(title: '0', color: grayColor, onPress: (){
                          userInput+='0';
                          setState(() {

                          });
                        },),
                        CalButton(title: '.', color: grayColor, onPress: (){
                          userInput+='.';
                          setState(() {

                          });
                        },),
                        CalButton(title: 'DEL', color: grayColor, onPress: (){
                          userInput =userInput.substring(0,userInput.length-1);
                          setState(() {

                          });
                        },),
                        CalButton(title: '=', color: orange, onPress: (){
                          equalPress();
                          setState(() {

                          });
                        },),

                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }



  void equalPress(){
    String finalUserInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression expression =p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
     double eval = expression.evaluate(EvaluationType.REAL, contextModel);
     answer=eval.toString();

  }
}
