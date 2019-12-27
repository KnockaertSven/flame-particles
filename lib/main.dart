import 'package:flutter/material.dart';
import 'package:particle_example/Game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flame Particles',
      home: GameWrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GameWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    Size size = Size(
      mediaQuery.size.width,
      mediaQuery.size.height,
    );

    return Scaffold(
      body: SafeArea(child: Game(size: size).widget),
    );
  }
}
