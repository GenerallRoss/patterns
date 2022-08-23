import 'package:flutter/material.dart';

abstract class Transport {
  void drive();
}

class Auto extends Transport {
  @override
  void drive() {
    debugPrint('Человек едет в машине');
  }
}

class Driver {
  void travel(Transport transport) {
    transport.drive();
  }
}

abstract class Animal {
  void move();
}

class Camel extends Animal {
  @override
  void move() {
    debugPrint('Человек едет на верблюде');
  }
}

class CamelToTransportAdapter extends Transport {
  Camel camel;

  CamelToTransportAdapter(this.camel);

  @override
  void drive() {
    camel.move();
  }
}
