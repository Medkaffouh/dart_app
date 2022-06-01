import 'package:dart_app/model/point.model.dart';

void main(){
  Point p1=const Point(x: 10, y: 20);
  Point p2=const Point(x: 10, y: 20);

  print(p1.toString());
  print(p2.toString());

  print(identical(p1, p2));

  //donc ça est hyper important dans flutter parce que flutter utilise beaucoup d'object(les colors,les styles, etc)
  //c'est ça pourqoi la majorité des widgets flutter c'est des widget qui utilise un constructeur const
  //ça veut dire si vous utiliser un object avec les meme parametre qui en téte utliser paravant
  //au lieu de crée un autre object dans la memoire il utilise le meme object
  //parce qui il est const donc finalement au lieu de cree par exemple 50 object color en memoire il fini
  //par crée un seule ça c'est trés important

  //et ça se fait pour les object immutable (qu'on peut pas les modifers aprés l'instantiation).
  //si vous esseyer de supprimer final ce message va afficher:
  //Can't define a const constructor for a class with non-final fields
}