import 'package:flutter/material.dart';
import 'package:math_quiz/questions/q10.dart';
import 'package:math_quiz/quiz.dart';

class Q9 extends StatefulWidget {
  const Q9({super.key});

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
  final inputAnswer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question - 9'),
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
                  q9,
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
                  if (answer == a9) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Q10()));
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
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
