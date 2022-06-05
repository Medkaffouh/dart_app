import 'package:dart_app/model/geometric.design.model.dart';

void main(){
  GeometricDesign geometricDesign=GeometricDesign.fromFile("Design1.json");
  geometricDesign.show();
}