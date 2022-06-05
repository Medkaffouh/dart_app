import 'dart:convert';
import 'dart:io';

import 'package:dart_app/model/circle.model.dart';
import 'package:dart_app/model/shape.model.dart';
import 'package:dart_app/model/rectangle.model.dart';

class GeometricDesign {
  List<Shape> shapes=[];

  Shape add(Shape shape){
    shapes.add(shape);
    return shape;
  }

  void show(){
    for(Shape shape in shapes){
      if(shape is Circle){
        print("************ Circle ************");
        print("Radius : ${shape.getRadius()}");
      }else if(shape is Rectangle){
        print("************ Rectangle ************");
        print("Height : ${shape.getHeight()}");
        print("Width : ${shape.getWidth()}");
      }
      print(shape.toJson());
      print("Area : ${shape.getArea()}");
      print("Perimeter : ${shape.getPerimeter()}");
    }
  }

  String toJson(){
    JsonEncoder jsonEncoder=const JsonEncoder.withIndent("  ");
    return jsonEncoder.convert({"shapes":shapes});
  }

  void save(String fileName){
    File file = File(fileName);
    file.writeAsStringSync(toJson());
  }
}