import 'dart:convert';

import './model/point.model.dart';

void main() {
  /*Point p1 = Point(10, 20); //l'operator 'new' dans dart n'est pas obligatoire pour crée un objet.
  print(p1.x);
  print(p1.y);*/

  //work with named argument constructor
  Point p1 = Point(x: 10, y: 20);
  print(p1.y);
  print(p1.toString());
  Point p2=Point.fromArray([22,55]);
  print(p2.toString());

  //use distanceTo methode
  print(p1.distanceTo(p2).toStringAsFixed(2));
  //use toJson methode
  print(p1.toJson());
  //convert to json
  print(json.encode(p1.toJson()));
  //--
  JsonEncoder jsonEncoder=JsonEncoder.withIndent("   ");
  print(jsonEncoder.convert(p1.toJson()));

  Map<String, dynamic> data = new Map();
  data['x']=34;
  data['y']=55;
  Point p3=Point.fromJson(data);
  print("p3 : ${p3.toString()}");

  Point p4=Point.fromJson({'x':66,'y':44});
  print("p4 : ${p4.toString()}");


  //p1 c'est un object immuable (because of finale) c'eat a dire que en fois en instancier en peux pas les modifier aprée
  //dans flutter tous les widget sont immutable
}