import 'package:dart_app/model/shape.model.dart';

class GeometricDesign {
  List<Shape> shapes=[];

  Shape add(Shape shape){
    shapes.add(shape);
    return shape;
  }

  void show(){
    for(Shape shape in shapes){
      print(shape.toJson());
    }
  }
}