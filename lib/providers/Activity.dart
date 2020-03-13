import 'package:flutter/cupertino.dart';

import 'Counselor.dart';

//enum period { firstActivity, secondActivity, thirdActivity }

class Activity {
  final String id=DateTime.now().toString(); //bu aktivite yaratıldığı anın mı
  final String activityCounselor;
  final String name;
  final String period;

  Activity({
  @required this.activityCounselor,
  @required this.name, 
  @required this.period, });
}
