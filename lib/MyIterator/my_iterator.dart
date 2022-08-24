import 'package:flutter/material.dart';
import 'classes.dart';

void runMyIterator() {
  RainbowIterator rainbowColors = RainbowIterator();
  while (rainbowColors.moveNext()) {
    debugPrint(rainbowColors.current);
  }
}
