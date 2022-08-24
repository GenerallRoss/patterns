import 'package:flutter/material.dart';
import 'package:patterns/MySingleton/classes.dart';

void runMySingleton() {
  Singleton singleton = Singleton();
  debugPrint(singleton.text);
}
