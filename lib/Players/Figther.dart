

import 'package:flutterkombat/Scenes/KombatGame.dart';
// import 'package:forge2d/src/body_component.dart';

class Figther extends BodyComponent<KombatGame>{
  @override
  Body createBody(){
    BodyDef def= BodyDef(
      BodyType.dynamic,userData: this,
    );
    return world.createBody(def);
  }
}
