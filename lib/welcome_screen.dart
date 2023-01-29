import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:math_quiz/questions/q1.dart';

import 'greetings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static const menuItems = <String>[
    '5',
    '10',
  ];
  final List<DropdownMenuItem<String>> dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  String? selectedVal;

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
          DropdownButton(
            value: selectedVal,
            hint: const Text("No. of Q's"),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() => selectedVal = newValue);
              }
            },
            items: dropDownMenuItems,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Q1(
                    qCount: selectedVal,
                  );
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
