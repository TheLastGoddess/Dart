class MyNewClass {
  int? age;
  String? name;
  int? phone;
  void sleep() {
    print("User is sleeping");
  }

  void work() {
    print("User is working");
  }

  MyNewClass({this.name, this.age, required this.phone});
  // MyNewClass.MyCustomCunstructor() {
  //   print("This is my custom cunstructor");
  // }
  MyNewClass.peopleWithoutNumber({required this.age, this.name});
  @override
  String toString() {
    return "Name = $name ,Age = $age ,Phone=${phone == null ? "not provided!" : phone}";
  }
}

void main(List<String> args) {
  MyNewClass class1 = MyNewClass(age: 22, phone: 9812365647);
  // MyNewClass class2 = MyNewClass.MyCustomCunstructor();
  MyNewClass class2 = MyNewClass.peopleWithoutNumber(age: 22, name: 'Elaheh');
  print(class2);
  print(class1);
}
