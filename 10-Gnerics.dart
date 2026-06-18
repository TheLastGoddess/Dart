class Food<T, U> {
  late T pizza;
  late U hamburger;
}

void main(List<String> args) {
  var pizza1 = Food<String, int>();
  pizza1.pizza = 'peperoni';
  pizza1.hamburger = 5;
  var pizza2 = Food<String, int>();
  pizza2.pizza = 'a';
  print(pizza1.pizza);
  print(pizza1.hamburger);
}
