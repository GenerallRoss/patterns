import 'package:flutter/material.dart';

class Singleton {
  String text = 'Привет';
  static String date = DateTime.now().toString();

  Singleton() {
    debugPrint('Дата одиночки: $date');
  }
}
