import 'dart:math';

void main() {
  var bike = Bicycle(2, 1);
  print(bike);

  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;
  Bicycle(this.cadence, this.gear);
  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  toString() => 'Bicycle: $_speed km/hr';
}

class Rectangle {
  int width;
  int height;
  Point origin;
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}
