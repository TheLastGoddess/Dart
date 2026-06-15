// Refactored constructor to use Super Parameters (Dart 2.17+) 
// This simplifies passing arguments to the base class constructor.

class Animal {
  String name;
  Animal({required this.name}) {
    print("Animal class");
  }
}

class Dog extends Animal {
  Dog({required super.name}) {
    print("this is $name class");
  }
}

void main(List<String> args) {
  Dog poppy = Dog(name: 'mika');
  print(poppy.name);
}
