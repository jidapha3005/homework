abstract class Shape {
  void calculateArea();
}

abstract class Drawable {
  void draw();
}

class circle implements Shape, Drawable {
  double? radius;
  circle(this.radius);

  @override
  void calculateArea() {
    double Sum = pi * radius! * radius!;
    print('Area of Circle : ${Sum.toStringAsFixed(2)}');
  }

  @override
  void draw() {
    print('Drawing Circle with radius: $radius');
  }
}

class Rectangle implements Shape, Drawable {
  double? width, height;
  Rectangle(this.width, this.height);

  @override
  void calculateArea() {
    double x = width! * height!;
    print('Area of Circle: $x');
  }

  @override
  void draw() {
    print('Drawing Rectangle with width: $width and height: $height');
  }
}

void main(List<String> args) {
  var c = circle(5);
  c.draw();
  c.calculateArea();
  var rectangle = Rectangle(10, 20);
  rectangle.draw();
  rectangle.calculateArea();
}
