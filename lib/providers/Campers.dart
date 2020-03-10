
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Camper.dart';
import 'Bunk.dart';
class Campers extends ChangeNotifier {

final List<Camper> campers = [
  Camper(
    id:'camper1',
    name:'samantha',
    surname:'surname',
    bunk: Bunk.bunks[0],),

    Camper(
    id:'camper2',
    name:'elizabeth',
    surname:'lastname',
    bunk: Bunk.bunks[1],),
];

}
