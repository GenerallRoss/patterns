import 'classes.dart';

void runMyAdapter() {
  // путешественник
  Driver driver = Driver();
  // машина
  Auto auto = Auto();
  // отправляемся в путешествие
  driver.travel(auto);
  // встретились пески, надо использовать верблюда
  Camel camel = Camel();
  // используем адаптер
  Transport camelTransport = CamelToTransportAdapter(camel);
  // продолжаем путь по пескам пустыни
  driver.travel(camelTransport);
}
