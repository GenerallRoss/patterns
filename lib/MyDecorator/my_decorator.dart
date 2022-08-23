import 'package:flutter/material.dart';
import 'package:patterns/MyDecorator/classes.dart';

void runMyDecorator() {
  Pizza pizza1 = ItalianPizza();
  pizza1 = TomatoPizza(pizza1);
  debugPrint('Название: ${pizza1.name}');
  debugPrint('Цена: ${pizza1.getCost()}');

  Pizza pizza2 = ItalianPizza();
  pizza2 = CheezePizza(pizza2);
  debugPrint('Название: ${pizza2.name}');
  debugPrint('Цена: ${pizza2.getCost()}');

  Pizza pizza3 = BulgerialPizza();
  pizza3 = TomatoPizza(pizza3);
  pizza3 = CheezePizza(pizza3);
  debugPrint('Название: ${pizza3.name}');
  debugPrint('Цена: ${pizza3.getCost()}');
}
