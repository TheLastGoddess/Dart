mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

class Duck with Swimming, Flying {}

class Fish with Swimming {}

void main() {
  Duck duck = Duck();
  duck.swim();
  duck.fly();

  Fish fish = Fish();
  fish.swim();
}
