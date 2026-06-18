class Food<T> {
  late T pizza;
  late T hamburger;
}

void main(List<String> args) {
  Food<String> pizza1 = Food<String>();
  pizza1.pizza = 'peperoni';
  Food<int> pizza2 = Food<int>();
  pizza2.pizza = 5;
  print(pizza1.pizza);
  print(pizza2.pizza);
}
