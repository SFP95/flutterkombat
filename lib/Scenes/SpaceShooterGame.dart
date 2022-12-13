import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutterkombat/Players/Player.dart';

class SpaceShooterGame extends FlameGame with HasTappables{
  Player nave= new Player();

  SpaceShooterGame(){
        nave.anchor = Anchor.center;
  }
@override
  void onGameResize(Vector2 canvasSize) {
    // TODO: implement onGameResize
    super.onGameResize(canvasSize);
    nave.position = this.size / 2; //tamaño pantalla
    nave.width = size[0]*0.5;
    nave.height = size[1]*0.3;
}

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    this.add(nave);

  }
}