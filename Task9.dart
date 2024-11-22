void main() {
  Rectangle rectangle = Rectangle(color: "red", width: 5, height: 10);
  print(rectangle.color);
  print(rectangle.area());

  Square square = Square(color: "blue", side: 5);
  print(square.color);
  print(square.area());
}

class Shape {
  double width;
  double height;

  Shape({required this.width, required this.height});

  double area() {
    return width * height;
  }
}

class Rectangle extends Shape {
  String color;

  Rectangle(
      {required this.color, required double width, required double height})
      : super(width: width, height: height);
}

class Square extends Shape {
  String color;

  Square({required this.color, required double side})
      : super(width: side, height: side);
}
