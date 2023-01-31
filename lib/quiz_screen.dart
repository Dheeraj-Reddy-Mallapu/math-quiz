import 'package:flutter/material.dart';
import 'package:math_quiz/questions.dart';
import 'welcome_screen.dart';
import 'package:restart_app/restart_app.dart';

class Q extends StatefulWidget {
  const Q({super.key});

  @override
  State<Q> createState() => _QState();
}

class _QState extends State<Q> {
  final inputAnswer = TextEditingController();
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (() {
            if (index < numQ) {
              return 'Question - ${index + 1}/$numQ';
            }
            return '';
          })(),
        ),
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
                  (() {
                    if (index < numQ) {
                      return queList[index];
                    }
                    return 'Your Score: $score of $numQ';
                  })(),
                  style: const TextStyle(fontSize: 55),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 40),
            if (index < numQ)
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
            if (index >= numQ)
              TextButton(
                  onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => ListView.builder(
                          itemCount: numQ,
                          padding: const EdgeInsets.all(40.0),
                          itemBuilder: (context, idx) {
                            return ListTile(
                              leading: CircleAvatar(
                                  child: Text(
                                '${idx + 1}',
                                style: const TextStyle(fontSize: 20),
                              )),
                              title: Text('${queList[idx]}',
                                  style: const TextStyle(fontSize: 23)),
                              trailing: Text('${ansList[idx]}',
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            );
                          },
                        ),
                      ),
                  child: const Text('Show Answers')),
            if (index < numQ)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    int answer = int.parse(inputAnswer.text.trim());
                    if (answer == ansList[index]) {
                      inputAnswer.clear();
                      const snackBar = SnackBar(
                        content: Text('HURRAY! You Are Correct'),
                        duration: Duration(milliseconds: 750),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.lightGreen,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      index++;
                      score++;
                      setState(() {});
                    } else {
                      inputAnswer.clear();
                      const snackBar = SnackBar(
                        content: Text('Oops! Wrong Answer'),
                        duration: Duration(milliseconds: 750),
                        backgroundColor: Colors.brown,
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      index++;
                      setState(() {});
                    }
                  },
                  child: const Text('Next'),
                ),
              ),
            if (index >= numQ)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {
                      Restart.restartApp();
                    },
                    child: const Text('Play Again')),
              )
          ],
        ),
      ),
    );
  }
}
