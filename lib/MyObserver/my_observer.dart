// ignore_for_file: unused_local_variable

import 'classes.dart';

void runMyObserver() {
  NewObserver obs = NewObserver();
  Client firstClient = Client('Bob', obs);
  Client secondClient = Client('Jake', obs);
  Client thirdClient = Client('Saul', obs);
  obs.notifyObservers('Тест');
}
