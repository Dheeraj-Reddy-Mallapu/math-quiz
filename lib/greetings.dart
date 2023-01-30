import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  final int hour = DateTime.now().hour;

  Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      (() {
        if (hour <= 12) {
          return 'Good Morning!';
        } else if (hour <= 15) {
          return 'Good Afternoon!';
        } else if (hour < 22) {
          return 'Good Evening!';
        }
        return '    Good Night!\n      Go to bed\nSWEET DREAMS';
      })(),
      style: const TextStyle(
        color: Colors.deepOrange,
        fontSize: 32,
      ),
    );
  }
}
