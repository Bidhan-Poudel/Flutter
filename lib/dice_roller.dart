import 'package:flutter/material.dart';
import 'dart:math';

  final randomizer= Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll=2;

  void onRoll() {
    setState(() {
    currentDiceRoll=randomizer.nextInt(6)+1;
    });
    // print("Rolling the dice"); 
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: onRoll,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll"),
        )
      ],
    );
  }
}
