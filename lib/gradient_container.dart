import 'package:flutter/material.dart';
import 'package:myfirstapp/dice_roller.dart';

// Variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Class
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});          //Constructor

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {                                               //buid function -> return type is widget
    return Container(                                                   // returning container widget
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
