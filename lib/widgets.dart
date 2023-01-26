import 'package:flutter/material.dart';

class Widgets extends StatelessWidget {
  final String qText;
  var pageController;
  var aText;
  final int toPage;

  var textControl;

  Widgets({
    super.key,
    required this.qText,
    required this.textControl,
    required this.aText,
    required this.toPage,
    required this.pageController,
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
        ElevatedButton(
          onPressed: () {
            double answer = double.parse(textControl.text.trim());
            if (answer == aText) {
              pageController.animateToPage(
                toPage,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            } else {
              const snackBar = SnackBar(
                content: Text('Oops! Wrong Answer'),
                backgroundColor: Colors.brown,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: const Text('Next'),
        ),
      ],
    );
  }
}
