class Area {
  final int x;
  final int y;
  final int area;

  const Area._internal(this.x, this.y) : area = x * y;
  factory Area(int x, int y) {
    if (x < 0 || y < 0) {
      throw Exception("Area can't be negative dummmy!");
    }
    return (Area._internal(x, y));
  }
}

void main(List<String> args) {
  Area area1 = Area(-10, 20);
  print(area1.area);
}
