import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../game/dead_game.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dead Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DeadGame(),
    );
  }
}
