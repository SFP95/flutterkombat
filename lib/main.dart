import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutterkombat/Scenes/KombatGame.dart';

import 'Scenes/SpaceShooterGame.dart';

void main() {

  KombatGame game= KombatGame();
  //SpaceShooterGame game =SpaceShooterGame();
  GameWidget gameWidget= GameWidget(game: game);
  runApp(gameWidget);

  //otra forma
  //runApp(GameWidget(game: SpaceShooterGame()));
}



