import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Counselor.dart';


class Counselors extends ChangeNotifier {
 List<Counselor> _counselors=[
   Counselor(name: 'Melike',surname: 'Bilen',id: DateTime.now().toString()),
   Counselor(name: 'Selin',surname: 'Çerkez',id: DateTime.now().toString()),
 ]; 
 
 
}