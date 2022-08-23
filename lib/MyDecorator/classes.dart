abstract class Pizza {
  String name;
  Pizza(this.name);
  int getCost();
}

class ItalianPizza extends Pizza {
  ItalianPizza() : super('Итальянская пицца');

  @override
  int getCost() {
    return 10;
  }
}

class BulgerialPizza extends Pizza {
  BulgerialPizza() : super("Болгарская пицца");

  @override
  int getCost() {
    return 8;
  }
}

abstract class PizzaDecorator extends Pizza {
  PizzaDecorator(String name, this.pizza) : super(name);
  Pizza pizza;
}

class TomatoPizza extends PizzaDecorator {
  TomatoPizza(Pizza pizza) : super(pizza.name + ', с томатами', pizza);

  @override
  int getCost() {
    return pizza.getCost() + 3;
  }
}

class CheezePizza extends PizzaDecorator {
  CheezePizza(Pizza pizza) : super(pizza.name + ', с сыром', pizza);

  @override
  int getCost() {
    return pizza.getCost() + 5;
  }
}
