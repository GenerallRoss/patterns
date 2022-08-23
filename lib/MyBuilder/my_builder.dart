import 'package:flutter/material.dart';

import 'classes.dart';

void runMyBuilder() {
  Baker baker = Baker();
  // создаем билдер для ржаного хлеба
  BreadBuilder builder = new RyeBreadBuilder();
  // выпекаем
  Bread ryeBread = baker.bake(builder);
  debugPrint(ryeBread.printResult());
  // оздаем билдер для пшеничного хлеба
  builder = WheatBreadBuilder();
  Bread wheatBread = baker.bake(builder);
  debugPrint(wheatBread.printResult());
}
