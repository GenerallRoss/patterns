import 'package:flutter/material.dart';

// Шаблонный класс для обучения
abstract class Education {
  void learn() {
    enter();
    study();
    passExams();
    getDocument();
  }

  void enter();
  void study();
  void passExams() {
    debugPrint('Сдаём выпускные экзамены');
  }

  void getDocument();
}

class School extends Education {
  @override
  void enter() {
    debugPrint('Идём в первый класс');
  }

  @override
  void study() {
    debugPrint('Посещаем уроки, делаем домашние задания');
  }

  @override
  void getDocument() {
    debugPrint('Получаем аттестат о среднем образовании');
  }
}

class University extends Education {
  @override
  void enter() {
    debugPrint('Сдаём вступительные экзамены и поступаем в ВУЗ');
  }

  @override
  void study() {
    debugPrint('Посещаем лекции');
    debugPrint('Проходим практику');
  }

  @override
  void passExams() {
    debugPrint('Сдаём экзамен по специальности');
  }

  @override
  void getDocument() {
    debugPrint('Получаем диплом о высшем образовании');
  }
}
