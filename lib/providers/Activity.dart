import 'package:flutter/cupertino.dart';

import 'Counselor.dart';

//enum period { firstActivity, secondActivity, thirdActivity }

class Activity {
  final String id;
  final String activityCounselor;
  final String name;
  final String period;

  Activity({
  @required this.id , 
  @required this.activityCounselor,
  @required this.name, 
  @required this.period, });
}
