import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDice = 'assets/images/dice-4.png';
  });
  }
    
    

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
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
    );
  }
}
