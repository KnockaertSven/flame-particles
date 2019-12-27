import 'package:flutter/material.dart';

class Particle {
  double _life = 100;
  double _fadeVelocity = 5;
  Offset _velocity = Offset(1, 1);
  Paint _paint;

  double size;
  Offset position;
  Offset direction;

  Particle({
    @required this.size,
    @required this.position,
    @required this.direction,
    Color color = Colors.blue,
  }) {
    _paint = Paint()..color = color;
    Offset x = Offset(1.0, 2.0);
  }

  update() {
    _paint.color = _paint.color.withOpacity((_life.toDouble() / 100));
    _life -= _fadeVelocity;
    position.translate(
      (direction.dx * _velocity.dx),
      (direction.dy * _velocity.dy),
    );
  }

  render(Canvas canvas) {
    canvas.drawCircle(position, size, _paint);
  }
}
