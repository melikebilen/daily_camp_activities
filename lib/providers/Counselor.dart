import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counselor{
  final String id;
  final String name;
  final String surname;
 
  
  Counselor(this.id,this.name,this.surname);

}

class Counselors with ChangeNotifier{

}