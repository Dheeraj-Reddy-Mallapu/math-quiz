import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  final String qText;

  var textControl;

  Widgets({
    super.key,
    required this.qText,
    required this.textControl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              qText,
              style: const TextStyle(fontSize: 75),
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: textControl,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Enter your answer'),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
