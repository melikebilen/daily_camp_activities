import 'package:daily_camp_activities/providers/Bunk.dart';
import 'package:daily_camp_activities/providers/Bunks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Counselor.dart';


class Counselors extends ChangeNotifier {
 
 List<Counselor> _counselors=[
   Counselor(name: 'Melike',surname: 'Bilen',id: DateTime.now().toString(),bunk: 'G2' ),
   Counselor(name: 'Selin',surname: 'Çerkez',id: DateTime.now().toString(),bunk: 'G1'),
 ]; 
 
 
}