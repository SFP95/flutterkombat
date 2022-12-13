import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent {
  //static final _paint = Paint()..color = Colors.white;
  static final _paint = Paint();
  late double x;
  late double y;
  late double widht;
  late double heigt;

  @override
  void render(Canvas canvas) {
    _paint.color=Colors.pinkAccent;
    //Rect rect=Rect.
    canvas.drawRect(size.toRect(), _paint);
  }
}