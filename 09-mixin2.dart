class Animal {
  void eat() {
    print("Eating..");
  }
}
mixin shingli on Hunter  {
  void shigool(){
    print("nanai");
  }
}
mixin Hunter on Animal {
  void hunt() {
    print("Hunting..");
    eat();
  }
}

class Lion extends Animal with Hunter {}
class plants extends Animal with Hunter , shingli {}

class Plant {
  void plant() {
    print("Growing..");
  }
}

void main() {
  var lion = Lion();
  lion.hunt();
}
