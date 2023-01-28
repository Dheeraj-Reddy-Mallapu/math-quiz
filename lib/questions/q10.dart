import 'package:flutter/material.dart';
import 'package:math_quiz/quiz.dart';
import 'package:math_quiz/welcome_screen.dart';
import 'package:restart_app/restart_app.dart';

class Q10 extends StatefulWidget {
  const Q10({super.key});

  @override
  State<Q10> createState() => _Q10State();
}

class _Q10State extends State<Q10> {
  final inputAnswer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question - 10'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  q10,
                  style: const TextStyle(fontSize: 75),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 300,
              child: TextFormField(
                autofocus: true,
                controller: inputAnswer,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some value';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your answer'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  int answer = int.parse(inputAnswer.text.trim());
                  if (answer == a10) {
                    Restart.restartApp();
                    const snackBar = SnackBar(
                      content: Text('HURRAY! You Are Correct'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.lightGreen,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    const snackBar = SnackBar(
                      content: Text('Oops! Wrong Answer'),
                      backgroundColor: Colors.brown,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
