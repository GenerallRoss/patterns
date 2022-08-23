class Flour {
  String sort;
  Flour(this.sort);
}

class Salt {}

class Additives {
  String name;
  Additives(this.name);
}

class Bread {
  Flour? flour;
  Salt? salt;
  Additives? additives;
  String printResult() {
    String result = '';
    if (flour != null) result += '${flour!.sort} + \n';
    if (salt != null) result += 'Соль \n';
    if (additives != null) result += 'Добавки: ${additives!.name}\n';
    return result;
  }
}

abstract class BreadBuilder {
  Bread bread = Bread();
  void setFlour();
  void setSalt();
  void setAdditives();
}

class Baker {
  Bread bake(BreadBuilder breadBuilder) {
    breadBuilder.setFlour();
    breadBuilder.setSalt();
    breadBuilder.setAdditives();
    return breadBuilder.bread;
  }
}

class RyeBreadBuilder extends BreadBuilder {
  @override
  void setFlour() {
    bread.flour = Flour('Ржаная мука 1 сорт');
  }

  @override
  void setSalt() {
    bread.salt = Salt();
  }

  @override
  void setAdditives() {}
}

class WheatBreadBuilder extends BreadBuilder {
  @override
  void setFlour() {
    bread.flour = Flour('Пшеничная мука 1 сорт');
  }

  @override
  void setSalt() {
    bread.salt = Salt();
  }

  @override
  void setAdditives() {
    bread.additives = Additives('улучшитель хлебопекарный');
  }
}
