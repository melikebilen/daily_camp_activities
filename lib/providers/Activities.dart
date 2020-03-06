
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Activity.dart';

class Activities extends ChangeNotifier{
  List<Activity> _activities= [
    Activity(
      name: 'Learn Turkish With Melike',
      activityCounselor:'Melike',
      period: period.firstActivity,
    ),
      Activity(
      name: 'Open Computers',
      activityCounselor:'Ceri',
      period: period.secondActivity,
    ),

  ];


List<Activity> get activities{
  return[..._activities];
}

//Sadece adminler tarafından değiştirilebilicek
void addActivity(){

}

}