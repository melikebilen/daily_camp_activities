import 'package:flutter/cupertino.dart';

import 'Bunk.dart';

class Bunks extends ChangeNotifier{

  static List<Bunk> bunks = [
  Bunk('G1'),
  Bunk('G2'),
  Bunk('G3'),
  Bunk('G4'),
];


 List<Bunk> get bunkList{
   return [...bunks];
 }

}