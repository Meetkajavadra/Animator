import 'package:flutter/material.dart';
import 'package:solar_planet_animation/planet_info_page.dart';
import 'homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'planet_info_page': (context) => PlanetInfoPage(),
      },
    ),
  );
}
