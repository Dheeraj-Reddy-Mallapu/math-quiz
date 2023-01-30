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
  @override
  Widget build(BuildContext context) {
//    var theme = Theme.of(context);
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
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Greetings()),
              SizedBox(
                  width: 500,
                  height: 350,
                  child: SvgPicture.asset('assets/images/calculator.svg')),
              SizedBox(
                width: 130,
                child: TextFormField(
                  controller: numOfQs,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'No.of Qs(max 20)'),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const Q();
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
        ],
      ),
    );
  }
}

final TextEditingController numOfQs = TextEditingController(text: '5');
int numQ = int.parse(numOfQs.text.trim());
