import 'package:flutter/material.dart';

class Styles {
  static const impactFont = "Impact";
  static const romanFont = "Roman";
  static const comicSansFont = "Comic";
  static const impact28ptfont = TextStyle(
    fontFamily: impactFont,
    fontSize: 28,
    color: Colors.black,
  );
  static const impact28ptColoredFont = TextStyle(
    fontFamily: impactFont,
    fontSize: 28,
    color: Color.fromARGB(255, 6, 255, 179),
    shadows: [
      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),
      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),
    ],
  );
  static const roman28ptfont = TextStyle(
    fontFamily: romanFont,
    fontSize: 28,
  );
  static const roman28ptColoredFont = TextStyle(
    fontFamily: romanFont,
    fontSize: 28,
    color: Color.fromARGB(255, 6, 255, 179),
    shadows: [
      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),
      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),
    ],
  );
  static const comic28ptfont = TextStyle(
    fontFamily: comicSansFont,
    fontSize: 28,
  );
  static const comic28ptColoredFont = TextStyle(
    fontFamily: comicSansFont,
    fontSize: 28,
    color: Color.fromARGB(255, 6, 255, 179),
    shadows: [
      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),
      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),
      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),
    ],
  );
}
