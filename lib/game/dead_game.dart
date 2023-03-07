import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class DeadGame extends StatelessWidget {
  const DeadGame({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled(
        'tiled/map.json',
        objectsBuilder: {},
      ),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
        actions: [
          JoystickAction(
            actionId: 1,
            margin: const EdgeInsets.all(50),
          ),
        ],
      ),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
      ),
      lightingColorGame: Colors.black.withOpacity(0.7),
    );
  }
}
