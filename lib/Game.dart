import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:particle_example/particles/ParticleManager.dart';

class Game extends BaseGame {
  Paint _backgroundColor = Paint()..color = Colors.white;
  ParticleManager _particleManager = ParticleManager();
  Size size;

  Game({@required this.size});

  @override
  render(Canvas canvas){
    super.render(canvas);

    // (re)draw the background
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, _backgroundColor);

    _particleManager.render(canvas);
  }

  @override
  update(double t){
    super.update(t);
    _particleManager.update();
  }
}