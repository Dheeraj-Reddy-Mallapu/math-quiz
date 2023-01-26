import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  int hour = DateTime.now().hour;

  @override
  Widget build(BuildContext context) {
    return Text(
      (() {
        if (hour <= 12) {
          return 'Good Morning!';
        } else if (hour <= 15) {
          return 'Good Afternoon!';
        } else if (hour < 20) {
          return 'Good Evening!';
        }
        return 'Good Night!';
      })(),
      style: const TextStyle(
        color: Colors.brown,
        fontSize: 32,
      ),
    );
  }
}
