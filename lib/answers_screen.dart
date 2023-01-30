import 'package:flutter/material.dart';
import 'package:math_quiz/questions.dart';
import 'package:math_quiz/welcome_screen.dart';

class Answers extends StatelessWidget {
  const Answers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Answers'), centerTitle: true),
      body: ListView.builder(
        itemCount: numQ,
        padding: const EdgeInsets.all(40.0),
        itemBuilder: (context, idx) {
          return ListTile(
            leading: CircleAvatar(
                child: Text(
              '${idx + 1}',
              style: const TextStyle(fontSize: 20),
            )),
            title:
                Text('${queList[idx]}', style: const TextStyle(fontSize: 23)),
            trailing: Text('${ansList[idx]}',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          );
        },
      ),
    );
  }
}
