import 'package:patterns/MyPrototype/classes.dart';

void runMyPrototype() {
  Figure figure = Rectangle(30, 40);
  Figure cloneFigure = figure.clone();
  figure.getInfo();
  cloneFigure.getInfo();

  figure = Circle(30);
  cloneFigure = figure.clone();
  figure.getInfo();
  cloneFigure.getInfo();
}
