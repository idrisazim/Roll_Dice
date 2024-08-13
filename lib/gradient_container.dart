import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  var color1;
  var color2;

 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
          child: DiceRoller(),
    ),
    );
  }
}
