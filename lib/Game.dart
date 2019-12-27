import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Game extends BaseGame {
  Paint _backgroundColor = Paint()..color = Colors.white;
  Size size;

  Game({@required this.size});

  @override
  render(Canvas canvas){
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, _backgroundColor);
    super.render(canvas);
  }

  @override
  update(double t){
    super.update(t);
  }
}