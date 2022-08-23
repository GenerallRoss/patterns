import 'classes.dart';

void runMyStrategy() {
  Car auto = Car(4, 'Volve', PetrolMove());
  auto.move();
  auto.thisMovable = ElectricMove();
  auto.move();
}
