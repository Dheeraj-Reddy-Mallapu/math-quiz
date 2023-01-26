import 'package:flutter/material.dart';
import 'quiz.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
//static List<Widget> qwidgets = <Widget>[Text('$question')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: questions.length,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
            if (index.isInfinite) return const Divider();
            return ListTile(
              leading: CircleAvatar(
                child: Text('$index'),
              ),
              title: Text(questions[index]),
            );
          }),
    );
  }
}
