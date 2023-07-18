
import 'dart:math';


import 'package:flutter/material.dart';
final randomizer = Random();

class DiceRoller extends StatefulWidget{
  @override 
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  
  var currentDiceRoll=2;

  //  var activeDiceImage = 'assets/dice-images/dice-2.png';


  void rollDice(){
    setState(() {
      currentDiceRoll=randomizer.nextInt(6) + 1;
    });
    
  }
  @override
 Widget build(context){
  return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Image.asset(
                  'assets/dice-images/dice-$currentDiceRoll.png',
              width: 200,
              ),

              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice, 
              style: TextButton.styleFrom(
                textStyle:const
              TextStyle(
                fontSize: 28 ,
                ),
                ),
              child: const Text('Roll Dice'))
              ]
            );
 }
}