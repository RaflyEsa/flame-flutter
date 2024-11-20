import 'dart:async';
import 'package:dasar_flame/component/ship.dart';
import 'package:flutter/painting.dart';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';

class Bgparallaxcomponent extends ParallaxComponent with HasGameRef{
  final _parallelImage = [
    ParallaxImageData("parallax/bkgd_0.png"),
    ParallaxImageData("parallax/bkgd_1.png"),
    ParallaxImageData("parallax/bkgd_2.png"),
    ParallaxImageData("parallax/bkgd_3.png"),
    ParallaxImageData("parallax/bkgd_4.png"),
    ParallaxImageData("parallax/bkgd_5.png"),
    ParallaxImageData("parallax/bkgd_6.png"),
  ];
  
  @override
  FutureOr<void> onLoad() async {
  parallax = await game.loadParallax(_parallelImage,
  baseVelocity: Vector2(0, -10),
  velocityMultiplierDelta: Vector2(1, 1),
  repeat: ImageRepeat.repeat);
}


void changeSpeedBaseShip(Ship player){
  if(parallax != null){
    parallax!.baseVelocity = player.arah * 10;
  }
}
}


