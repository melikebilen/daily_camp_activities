import 'Camper.dart';
import 'Counselors.dart';
import 'Counselor.dart';

class Bunk{
  // final id; Database için eklenebilir
  final String name;
   List<Camper> campers;
   List<Counselor> counselor;

  Bunk(this.name);

static List<Bunk> bunks = [
  Bunk('G1'),
  Bunk('G2'),
  Bunk('G3'),
];
  



 //each class will have counselors and campers!

}