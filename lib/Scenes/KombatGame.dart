import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class KombatGame extends FlameGame{

 late TiledComponent mapComponent;

@override
  Future<void>? onLoad() async{
    // TODO: implement onLoad
    await super.onLoad();

    mapComponent = await TiledComponent.load("mapa.tmx", Vector2.all(32));
  }
}