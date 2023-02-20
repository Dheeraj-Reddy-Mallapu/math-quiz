import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: ((ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      return MaterialApp(
        title: 'Math Quiz',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightDynamic ?? _defaultLightColorScheme,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkDynamic ?? _defaultDarkColorScheme,
        ),
        home: const WelcomeScreen(),
      );
    }));
  }
}

final _defaultLightColorScheme = ColorScheme.fromSeed(seedColor: Colors.orange);

final _defaultDarkColorScheme = ColorScheme.fromSeed(seedColor: Colors.orange, brightness: Brightness.dark);
