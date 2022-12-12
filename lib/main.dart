import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'Scenes/SpaceShooterGame.dart';

void main() {


  SpaceShooterGame game =SpaceShooterGame;)();
  GameWidget gameWidget= GameWidget(game: game);
  runApp(gameWidget);

  //otra forma
  //runApp(GameWidget(game: SpaceShooterGame()));
}



