class Animal {
  String? color;

  void eat() {
    print('Animal is Eating!!');
  }
}

class Dog extends Animal {
  String? breed = "Husky";
  void eat() {
    super.eat();
    print('$breed is Eating!!');
  }

  void bark() {
    print('Bark Bark !!');
  }
}

void main(List<String> args) {
  Dog mika = Dog();

  mika.eat();
  mika.bark();

  mika.color = 'Brown';
}
