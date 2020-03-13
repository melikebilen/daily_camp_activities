
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Camper.dart';
import 'Bunk.dart';
import 'Bunks.dart';
class Campers extends ChangeNotifier {

final List<Camper> campers = [
  Camper(
    id:'camper1',
    name:'samantha',
    surname:'Parker',
    bunk:Bunks.bunks[0]),

    Camper(
    id:'camper2',
    name:'Elizabeth',
    surname:'Green',
    bunk: Bunks.bunks[1],),
];

}
