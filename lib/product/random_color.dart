import 'dart:math';
import 'package:flutter/material.dart';

class RandomColor {

  static Color Rcolor(){
  var random = Random();
   int r = random.nextInt(16) * 16;
   int g = random.nextInt(16) * 16;
   int b = random.nextInt(16) * 16;
   Color color = Color.fromARGB(255, r, g, b);
   return color;
  }
}
