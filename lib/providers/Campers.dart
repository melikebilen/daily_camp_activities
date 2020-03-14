
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Camper.dart';
import 'Bunk.dart';
import 'Bunks.dart';
class Campers extends ChangeNotifier {
  

final List<Camper> campers = [
  Camper(
    id:DateTime.now().toString(),
    name:'samantha',
    surname:'Parker',
    bunk: 'G1'),

    Camper(
    id:DateTime.now().toString(),
    name:'Elizabeth',
    surname:'Green',
    bunk:'G3'),
    
    Camper(
    id:DateTime.now().toString(),
    name:'Rachel',
    surname:'A',
    bunk: 'G1'),

    Camper(
    id:DateTime.now().toString(),
    name:'BCD',
    surname:'ABC',
    bunk: 'G4'),

    Camper(
    id:DateTime.now().toString(),
    name:'44444444444444',
    surname:'ABC',
    bunk: 'G4'),
];


}
