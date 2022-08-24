import 'package:flutter/material.dart';

abstract class Figure {
  Figure clone();
  void getInfo();
}

class Rectangle extends Figure {
  int width;
  int heigth;

  Rectangle(this.width, this.heigth);

  @override
  Figure clone() {
    return Rectangle(width, heigth);
  }

  @override
  void getInfo() {
    debugPrint('Прямоугольник длиной $width и шириной $heigth');
  }
}

class Circle extends Figure {
  int radius;

  Circle(this.radius);

  @override
  Figure clone() {
    return Circle(radius);
  }

  @override
  void getInfo() {
    debugPrint('Круг радиусом $radius');
  }
}
