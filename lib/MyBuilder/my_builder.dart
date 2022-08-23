import 'package:flutter/material.dart';

import 'classes.dart';

void runMyBuilder() {
  Baker baker = Baker();
  // создаем билдер для ржаного хлеба
  BreadBuilder builder = RyeBreadBuilder();
  // выпекаем
  Bread ryeBread = baker.bake(builder);
  debugPrint(ryeBread.printResult());
  // создаем билдер для пшеничного хлеба
  builder = WheatBreadBuilder();
  Bread wheatBread = baker.bake(builder);
  debugPrint(wheatBread.printResult());
}
