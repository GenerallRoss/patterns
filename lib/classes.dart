import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class Observable {
  void addObserver(Client o);
  void removeObserver(Client o);
  void notifyObservers(String newText);
}

class NewObserver implements Observable {
  List<Client> clients = [];

  @override
  void addObserver(Client newClient) {
    clients.add(newClient);
  }

  @override
  void removeObserver(Client newClient) {
    clients.remove(newClient);
  }

  @override
  void notifyObservers(String newText) {
    clients.forEach((element) {
      element.update(newText);
    });
  }
}

class Client {
  String _name = '';
  Client(String name, NewObserver obs) {
    _name = name;
    obs.addObserver(this);
  }

  void update(String newText) {
    debugPrint('Была получена информация: $_name $newText');
  }
}
