import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends PositionComponent with Tappable {

  static final _paint = Paint();
  Color cVisible =Colors.white;
  double iYMovido=0;
  double iYOrigen=0;
  int tapCount=0;
  int iLevel=0;
  int iDireccion=-2;
  int altMax=800;
  double gravedad=9.8;
  late Rect rectObjecto;
  late dynamic imgNave;
  final imagesLoader = Images();
  late Offset imgOffset;
  //SpriteAnimation a;

  @override
  Future<void>? onLoad() async {
    // TODO: implement onLoad
    iYOrigen=position[1];
    rectObjecto=size.toRect();

    imgNave = (await imagesLoader.load('assets/icon/cohete.jpg'));
    imgOffset = const Offset( 0,0);
    sprite = Sprite(imgNave);

    //spriteNave = Sprite(imgNave,srcSize: size);
    //sprite = (await imagesLoader.load('naves/nave1.jpg'));
    //add(spriteNave);
    //imgNave=Image.asset("assets/icon/icon.png");
    return super.onLoad();

  }

  @override
  void render(Canvas canvas) {
  //   a.re
  //   //sprite?.renderRect(canvas, rectObjecto);
  //  // canvas.drawRect(size.toRect(), _paint);
  // }
  // @override
  // bool onTapUp(TapUpInfo info){
  //   print('tap up');
  //   cVisible=Colors.white;
  //   //position[1]+position[1]+iDireccion;
  //
  //   // if (iYMovido==350) {
  //   //   iYMovido -= 100;
  //   // }
  //   return true;
  }
  @override
  bool onTapUp(TapUpInfo info) {
    print("tap up");
    cVisible = Colors.white;
    return true;
  }
  @override
  bool onTapDown(TapDownInfo info){
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
    position[1]=position[1]+iDireccion;
    // position[1]=position[1]+iDireccion+gravedad;
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