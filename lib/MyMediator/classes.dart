import 'package:flutter/material.dart';

abstract class Mediator {
  void send(String msg, Colleague colleague);
}

abstract class Colleague {
  Mediator mediator;

  Colleague(this.mediator);

  void send(String message) {
    mediator.send(message, this);
  }

  void notify(String message);
}

// Класс заказчика
class CustomerColleague extends Colleague {
  CustomerColleague(Mediator mediator) : super(mediator);

  @override
  void notify(String message) {
    debugPrint('Сообщение заказчику: $message');
  }
}

// Класс программиста
class ProgrammerColleague extends Colleague {
  ProgrammerColleague(Mediator mediator) : super(mediator);

  @override
  void notify(String message) {
    debugPrint('Сообщение программисту: $message');
  }
}

// Класс тестера
class TesterColleague extends Colleague {
  TesterColleague(Mediator mediator) : super(mediator);

  @override
  void notify(String message) {
    debugPrint('Сообщение тестеру: $message');
  }
}

class ManageMediator extends Mediator {
  late Colleague customer;
  late Colleague programmer;
  late Colleague tester;

  @override
  void send(String msg, Colleague colleague) {
    // Если отправитель - заказчик, значит есть новый заказ
    // отправляем сообщение программисту - выполнить заказ
    if (customer == colleague) {
      programmer.notify(msg);
      // Если отправитель - программист, то можно приступать к тестированию
      // отправляем сообщение тестеру
    } else if (programmer == colleague) {
      tester.notify(msg);
      // Если отправитель - тест, значит продукт готов
      // отправляем сообщение заказчику
    } else if (tester == colleague) {
      customer.notify(msg);
    }
  }
}
