import 'package:flutter/material.dart';
import 'package:flutter_ogreniyorum/text_style.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.blueAccent, Color.fromARGB(255, 118, 204, 20)],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  Center(
        child: StyledText('Stateless Widget Flutter'),
      ),
    );
  }
}
