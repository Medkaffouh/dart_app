import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/point.model.dart';
import 'package:dart_app/model/rectangle.model.dart';
import 'package:dart_app/model/shape.model.dart';

void main() {
  Shape shape = Circle(
      p1: const Point(
        x: 10,
        y: 20,
      ),
      p2: const Point(
        x: 30,
        y: 60,
      ));
  print(shape.toJson());
  print(shape.getPerimeter().toStringAsFixed(2));
  print(shape.getArea().toStringAsFixed(2));
  if (shape is Circle) {
    //is like instanceOf in java
    print(shape
        .getRadius()); //il fait un cast implicite c'est pas comme java on dois fait le casting
  }
  //---ou te peux faire le casting de ce maniere aussi
  print((shape as Circle).getRadius());

  print("===================================");
  Rectangle rect1 = Rectangle(
    p1: const Point(
      x: 67,
      y: 44,
    ),
    p2: const Point(
      x: 120,
      y: 60,
    ),
  );
  
  print(rect1.toJson());
  print(rect1.getWidth());
  print(rect1.getHeight());
  print(rect1.getArea());
  print(rect1.getPerimeter());
}
