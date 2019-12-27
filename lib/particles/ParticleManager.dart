import 'dart:math';

import 'package:flutter/material.dart';
import 'Particle.dart';

class ParticleManager {
  List<Particle> _particles = [];

  addParticle({Offset position, Offset direction}) {
    Random rng = Random();

    double size = rng.nextDouble()*8 + 2;
    double power = rng.nextDouble()*10 + 2;
    Offset diversion = Offset(
      rng.nextDouble()/2 - 0.25,
      rng.nextDouble()/2 - 0.25,
    );
    direction = direction.scale(power, power).translate(diversion.dx, diversion.dy);

    Particle particle = Particle(
      size: size,
      position: position,
      direction: direction,
      color: Colors.grey,
    );
    _particles.add(particle);
  }

  update() {
    for (Particle particle in _particles.reversed.toList()) {
      particle.update();
      if (particle.life <= 0) {
        _particles.remove(particle);
      }
    }
  }

  render(Canvas canvas) {
    for (Particle particle in _particles) particle.render(canvas);
  }
}
