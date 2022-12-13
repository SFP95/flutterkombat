import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent with Tappable {
  //static final _paint = Paint()..color = Colors.white;
  static final _paint = Paint();
  Color cVisisble =Colors.white;

  @override
  void render(Canvas canvas) {
    _paint.color=Colors.white;
    //Rect rect=Rect.
    canvas.drawRect(size.toRect(), _paint);
  }
  @override
  bool onTapUp(TapUpInfo info){
    print('tap up');
    cVisisble=Colors.white;
    return true;
  }
  @override
  bool onTapDown(TapDownInfo info){
    print('tap up');
    cVisisble=Colors.red;
    return super.onTapDown(info);
  }
  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }

}