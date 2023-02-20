import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:math_quiz/quiz_screen.dart';

import 'greetings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  double noOfQs = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Welcome to Math Quiz',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Container(alignment: Alignment.center, padding: const EdgeInsets.all(10), child: Greetings()),
              SizedBox(width: 500, height: 350, child: SvgPicture.asset('assets/images/calculator.svg')),
              Text("Number of Questions: ${noOfQs.round()}"),
              Slider(
                value: noOfQs,
                onChanged: ((value) => setState(() => noOfQs = value)),
                min: 1,
                max: 20,
                divisions: 19,
                label: '$noOfQs',
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Q(), settings: RouteSettings(arguments: noOfQs)));
                },
                child: const Text(
                  "Let's math!",
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
