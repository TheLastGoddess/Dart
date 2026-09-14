enum DannyStatus { normal, confused, poisoned }

class danny {
  final DannyStatus status;
  danny({this.status = DannyStatus.normal});

  void move() {
    switch (status) {
      case DannyStatus.normal:
        print("Danny is moving!");

      case DannyStatus.confused:
        print("U hit the Danny");

      case DannyStatus.poisoned:
        print("Danny ate poisoned mushroom!");
    }
  }

  void eat() {
    print("Danny is eating Mushrooms YamYam!!");
  }
}

void main(List<String> args) {
  danny d1 = danny(status: DannyStatus.poisoned)
    ..move()
    ..eat();
}
