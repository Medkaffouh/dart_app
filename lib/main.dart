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


  //p1 c'est un object immuable (because of finale) c'eat a dire que en fois en instancier en peux pas les modifier aprée
  //dans flutter tous les widget sont immutable
}