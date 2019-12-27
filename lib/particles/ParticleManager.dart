import 'package:flutter/material.dart';
import 'Particle.dart';

class ParticleManager {
  List<Particle> _particles = [];

  addParticle() {}

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
