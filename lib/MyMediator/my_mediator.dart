import 'package:patterns/MyMediator/classes.dart';

void runMyMediator() {
  ManageMediator mediator = ManageMediator();
  Colleague customer = CustomerColleague(mediator);
  Colleague programmer = ProgrammerColleague(mediator);
  Colleague tester = TesterColleague(mediator);
  mediator.customer = customer;
  mediator.programmer = programmer;
  mediator.tester = tester;
  customer.send('Есть заказ, надо сделать программу');
  programmer.send('Программа готова, надо протестировать');
  tester.send('Программа протестирована и готова к продаже');
}
