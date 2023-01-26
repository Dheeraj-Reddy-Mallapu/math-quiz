import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'quiz_screen.dart';
import 'greetings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
//    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Welcome to Math Quiz',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Greetings()),
          SizedBox(
              width: 500,
              height: 350,
              child: SvgPicture.asset('assets/images/calculator.svg')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Quiz();
                },
              ));
            },
            child: const Text(
              "Let's math!",
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
