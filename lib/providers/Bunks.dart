import 'package:flutter/cupertino.dart';

import 'Bunk.dart';

class Bunks extends ChangeNotifier{



  List<String> bunks = [
 'G1','G2','G3','G4',
];


 List<String> get bunkList{
   return [...bunks];
 }





//   static List<String> bunks = [
//   Bunk('G1'),
//   Bunk('G2'),
//   Bunk('G3'),
//   Bunk('G4'),
// ];

//  List<Bunk> get bunkList{
//    return [...bunks];
//  }

}