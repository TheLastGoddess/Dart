enum Color { black, red, green, blue }

void main(List<String> args) {
  Color acolor = Color.green;
  switch (acolor) {
    case Color.green:
      print("green as grass");
      break;
    case Color.red:
      print("red as Roses");
      break;
    default:
      print(acolor);
  }
}
