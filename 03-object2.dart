class programmer {
  late String first, last, email, skill;
  late var pay;

  programmer({
    required this.first,
    required this.last,
    required this.skill,
    required this.pay,
  }) {
    email = '$first@gmail.com';
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
  print(p1);
  // p1.call();
  p1.userpromotion(22.3);
  print(p1);
}
