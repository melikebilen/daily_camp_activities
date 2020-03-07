
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Activity.dart';

class Activities extends ChangeNotifier{
  List<Activity> _activities= [
    Activity(
      id:'1',
      name: 'Learn Turkish With Melike',
      activityCounselor:'Melike',
      period: period.firstActivity,
    ),
      Activity(
      id:'2',  
      name: 'Open Computers',
      activityCounselor:'Ceri',
      period: period.secondActivity,
    ),
       Activity(
      id:'3',
      name: 'Volleyball',
      activityCounselor:'Selin',
      period: period.secondActivity,
    ),
       Activity(
         id:'2',
      name: 'Tennis',
      activityCounselor:'Ryan',
      period: period.secondActivity,
    ),

  ];


List<Activity> get activities{
  return[..._activities];
}

//Sadece adminler tarafından değiştirilebilicek
void addActivity(){
notifyListeners();
}

void deleteActivity(String activityId){
_activities.removeWhere((act)=> act.id== activityId);
notifyListeners();
}


}