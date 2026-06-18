import "dart:math";

class Animal {}

class Dog extends Animal {}

class Cat extends Animal {}

void main(List<String> args) {
  Random random = Random();
  bool r = random.nextBool();
  Animal a = r ? Dog() : Cat();
  //This program will got error when r becomes false so a will be an instance of Cat
  Dog d = a as Dog;
  print("$a , $d");
}
