import 'package:flutter/material.dart';

abstract class Weapon {
  void hit();
}

abstract class Movement {
  void move();
}

class Arbalet extends Weapon {
  @override
  void hit() {
    debugPrint('Стреляем из арбалета');
  }
}

class Sword extends Weapon {
  @override
  void hit() {
    debugPrint('Бьём мечом');
  }
}

class FlyMovement extends Movement {
  @override
  void move() {
    debugPrint('Летим');
  }
}

class RunMovement extends Movement {
  @override
  void move() {
    debugPrint('Бежим');
  }
}

abstract class HeroFactory {
  Movement createMovement();
  Weapon createWeapon();
}

class ElfFactory extends HeroFactory {
  @override
  Movement createMovement() {
    return FlyMovement();
  }

  @override
  Weapon createWeapon() {
    return Arbalet();
  }
}

class WarriorFactory extends HeroFactory {
  @override
  Movement createMovement() {
    return RunMovement();
  }

  @override
  Weapon createWeapon() {
    return Sword();
  }
}

class Hero {
  late Weapon weapon;
  late Movement movement;
  Hero(HeroFactory factory) {
    weapon = factory.createWeapon();
    movement = factory.createMovement();
  }
  void run() {
    movement.move();
  }

  void hit() {
    weapon.hit();
  }
}
