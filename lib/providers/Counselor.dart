import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Bunk.dart';

class Counselor {
  final String id;
  final String name;
  final String surname;
  final Bunk bunk;

  String username=''; //"$name.$surname.2020";
  String password=''; //"$name.$surname.2020";

  Counselor({
   @required this.id, 
   @required this.name, 
   @required this.surname,
   @required this.bunk
   }
   );
}

