import 'package:flutter/material.dart';
import 'package:math_quiz/widgets.dart';
import 'quiz.dart';
import 'package:restart_app/restart_app.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final PageController _pageController = PageController();

  final inputAnswer1 = TextEditingController();
  final inputAnswer2 = TextEditingController();
  final inputAnswer3 = TextEditingController();
  final inputAnswer4 = TextEditingController();
  final inputAnswer5 = TextEditingController();
  final inputAnswer6 = TextEditingController();
  final inputAnswer7 = TextEditingController();
  final inputAnswer8 = TextEditingController();
  final inputAnswer9 = TextEditingController();
  final inputAnswer10 = TextEditingController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q1, textControl: inputAnswer1),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer1.text.trim());
                  if (answer == a1) {
                    _pageController.animateToPage(
                      1,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q2, textControl: inputAnswer2),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer2.text.trim());
                  if (answer == a2) {
                    _pageController.animateToPage(
                      2,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q3, textControl: inputAnswer3),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer3.text.trim());
                  if (answer == a3) {
                    _pageController.animateToPage(
                      3,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q4, textControl: inputAnswer4),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer4.text.trim());
                  if (answer == a4) {
                    _pageController.animateToPage(
                      4,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q5, textControl: inputAnswer5),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer5.text.trim());
                  if (answer == a5) {
                    _pageController.animateToPage(
                      5,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q6, textControl: inputAnswer6),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer6.text.trim());
                  if (answer == a6) {
                    _pageController.animateToPage(
                      6,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q7, textControl: inputAnswer7),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer7.text.trim());
                  if (answer == a7) {
                    _pageController.animateToPage(
                      7,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q8, textControl: inputAnswer8),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer8.text.trim());
                  if (answer == a8) {
                    _pageController.animateToPage(
                      8,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q9, textControl: inputAnswer9),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer9.text.trim());
                  if (answer == a9) {
                    _pageController.animateToPage(
                      9,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Widgets(qText: q10, textControl: inputAnswer10),
              ElevatedButton(
                onPressed: () {
                  double answer = double.parse(inputAnswer10.text.trim());
                  if (answer == a10) {
                    Restart.restartApp();
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
            ],
          ),
        ],
      ),
    );
  }
}
