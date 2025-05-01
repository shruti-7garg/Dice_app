import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  //Function to roll th edice when btn is clicked
  void rollDice() {
    setState(() {                                          // re-execute build fun to display upadted UI
      currentDiceRoll = randomizer.nextInt(6) + 1;         // b/w 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(                                   // dice and btn are in one column vertically aligned
      mainAxisSize: MainAxisSize.min,                // to make column take only content space
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
