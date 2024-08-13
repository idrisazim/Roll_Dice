import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/text_style.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  var color1;
  var color2;

  var activeDice = 'assets/images/dice-2.png';

  void rollDice() {
    activeDice = 'assets/images/dice-4.png';
    print('changing image');
  }

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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-2.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                )),
            child: const Text('Roll Dice'),
          )
        ],
      )),
    );
  }
}
