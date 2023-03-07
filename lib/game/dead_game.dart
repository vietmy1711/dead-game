import 'dart:math';

import 'package:flame/events.dart';
import 'package:flame_forge2d/forge2d_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeadGame extends Forge2DGame with KeyboardEvents {
  DeadGame();
  double offsetX = 0;
  double offsetY = 0;
  double radius = 0;
  double time = 0;
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    final Paint paint = Paint();
    paint.color = Colors.brown;
    canvas.drawCircle(Offset(offsetX, offsetY), pi * radius, paint);
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is RawKeyDownEvent) {
      keysPressed.forEach((element) {
        if (element.keyLabel == 'A') {
          offsetX -= 10;
        }
        if (element.keyLabel == 'W') {
          offsetY -= 10;
        }
        if (element.keyLabel == 'D') {
          offsetX += 10;
        }
        if (element.keyLabel == 'S') {
          offsetY += 10;
        }
      });
    }
    return super.onKeyEvent(event, keysPressed);
  }

  @override
  void update(double dt) {
    super.update(dt);
    time += dt;
    radius = time % 10;
  }
}
