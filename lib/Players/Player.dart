import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent with Tappable {
  //static final _paint = Paint()..color = Colors.white;
  static final _paint = Paint();
  Color cVisible =Colors.white;
  double iYMovido=0;
  double iYOrigen=0;

  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
  }
  @override
  bool onTapUp(TapUpInfo info){
    print('tap up');
    cVisible=Colors.white;
    return true;
  }
  @override
  bool onTapDown(TapDownInfo info){
    print('tap up');
    cVisible=Colors.red;
    iYMovido+=10; //movimiento del objeto
    return super.onTapDown(info);
  }
  @override
  void update(double dt) {
    super.update(dt);
    _paint.color=cVisible;
    //posicioón origen del objeto Player
    position[1]=iYOrigen+iYMovido;
  }
}