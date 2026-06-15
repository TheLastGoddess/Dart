//We want to see the numbers of instances of class

class programmer {
  late String first, last, email, skill;
  late var pay;
  static int number = 0;
  programmer({
    required this.first,
    required this.last,
    required this.skill,
    required this.pay,
  }) {
    email = '$first@gmail.com';
    number += 1;
  }
  void call() {
    print(" $email Address is $first@gmail.com");
  }

  double userpromotion(double value) {
    return pay = pay * value;
  }

  @override
  String toString() {
    return "name : $first ,last:$last , email : $email ,skill:$skill ,pay:$pay ";
  }
}

void main(List<String> args) {
  programmer p1 = programmer(
    first: 'Eli',
    last: 'Farajzadeh',
    skill: 'Dart',
    pay: 500,
  );
  programmer p2 = programmer(
    first: 'mmd',
    last: 'khaligh',
    skill: 'c',
    pay: 1500,
  );
  print(p1);
  print(p2);
  print(programmer.number);
}
