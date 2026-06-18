class Shark {
  void swim() {
    print("shark can swim!");
  }

  void backward() {
    print("Shark can't swim backward");
  }

  void skeleton() {
    print("shark has big bones");
  }
}

class Fish {
  void swim() {
    print("fish can swim!");
  }

  void backward() {
    print("fish can swim backward");
  }

  void skeleton() {
    print("fish has small bones");
  }
}

void main(List<String> args) {
  Shark jimmy = Shark();
  Fish bobby = Fish();
  void inSea(var fish) {
    fish.swim();
    fish.skeleton();
  }

  inSea(bobby);
}
