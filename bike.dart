
import 'dart:math';




void main() {
  var bike= Bicycle(2,1);
  print (bike);
}

class Bicycle {
  int cadence;
  int _speed=0;
  int get speed=>_speed;
  int gear;
  Bicycle(this.cadence, this.gear);
  void applyBrake(int decrement) {
  _speed -= decrement;
}

void speedUp(int increment) {
  _speed += increment;
}
  @override
  toString()=>'Bicycle: $_speed km/hr';
}
class Rectangle {
  int width;
  int height;
  Point origin;
  Rectangle(this.height,this.origin,this.width);
  you cow
}