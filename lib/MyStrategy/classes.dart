import 'package:flutter/material.dart';

abstract class Movable {
  void move();
}

class PetrolMove implements Movable {
  @override
  void move() {
    debugPrint('Перемещение на бензине');
  }
}

class ElectricMove implements Movable {
  @override
  void move() {
    debugPrint('Перемещение на электричестве');
  }
}

class Car {
  int passengers;
  String model;
  Movable thisMovable;
  Car(this.passengers, this.model, this.thisMovable);
  void move() {
    thisMovable.move();
  }
}
