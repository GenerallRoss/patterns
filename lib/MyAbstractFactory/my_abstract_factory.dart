import 'package:patterns/MyAbstractFactory/classes.dart';

void runMyAbstractFactory() {
  Hero elf = Hero(ElfFactory());
  elf.hit();
  elf.run();

  Hero voin = Hero(WarriorFactory());
  voin.hit();
  voin.run();
}
