import 'dart:math';

class Point {
  //quent vous avez un attribute qui commence par underscore '_' ça signifier que private
  final double x;
  final double y;
  //double? _z; // ? signifier que optionnel
  //Point(this.x,this.y);
  //constructor avec argument nommé (Named Argument Constructor)
  const Point({required this.x,required this.y});
  //constructeur nommé (Named Constructor)
  Point.fromArray(List<double> data):
      x=data[0], y=data[1];

  Point.fromJson(Map<String, dynamic> data):
      x=(data['x'] as num).toDouble(),y=(data['y'] as num).toDouble();

  double distanceTo(Point p){
    double w=x-p.x;
    double h=y-p.y;
    return sqrt(w*w+h+h);
  }

  Map<String, dynamic> toJson(){
    return {'x':x,'y':y};
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }

//si les attribute est prevate en peux pas acceder depuis l'exterieur
  //donc il faut ajouter les getters setters

  // get x {
  //   return _x;
  // }
  //<=>
/*  double get y => _y;

  set y(double value) {
    _y = value;
  }

  double get x => _x;

  set x(double value) {
    _x = value;
  }*/
}