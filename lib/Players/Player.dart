import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent with Tappable {
  //static final _paint = Paint()..color = Colors.white;
  static final _paint = Paint();
  Color cVisible =Colors.white;
  double iYMovido=0;
  double iYOrigen=0;
  int tapCount=0;
  int iLevel=0;
  int iDireccion=-2;
  int altMax=800;
  double gravedad=9.8;


  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
  }
  @override
  bool onTapUp(TapUpInfo info){
    print('tap up');
    cVisible=Colors.white;
    position[1]+position[1]+iDireccion;

    // if (iYMovido==350) {
    //   iYMovido -= 100;
    // }
    return true;
  }
  @override
  bool onTapDown(TapDownInfo info){
    print('tap up');
    cVisible=Colors.red;
    //iYMovido+=10; //movimiento del objeto
    iDireccion=-iDireccion;
    // tapCount++;
    // if(tapCount>iLevel*5){
    //   iDireccion=iDireccion*2;
    //   tapCount=0;
    // }
    return super.onTapDown(info);
  }
  @override
  void update(double dt) {
    super.update(dt);
    _paint.color=cVisible;
    position[1]=position[1]+iDireccion+gravedad;
    if(position[1]<0){
      iDireccion=-iDireccion;
    }
    if(position[1]>altMax){
      iDireccion=-iDireccion;
    }
    //posicioón origen del objeto Player
    // position[1]=iYOrigen+iYMovido;
  }
}