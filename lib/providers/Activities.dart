
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Activity.dart';

class Activities extends ChangeNotifier{
  List<Activity> _activities= [
    Activity(
      id:'1',
      name: 'Learn Turkish With Melike',
      activityCounselor:'Melike',
      period: '1',
    ),
      Activity(
      id:'2',  
      name: 'Open Computers',
      activityCounselor:'Ceri',
      period: '2',
    ),
       Activity(
      id:'3',
      name: 'Volleyball',
      activityCounselor:'Selin',
      period:'3',
    ),
       Activity(
         id:'2',
      name: 'Tennis',
      activityCounselor:'Ryan',
      period: '2',
    ),

  ];


List<Activity> get activities{
  return[..._activities];
}

//Sadece adminler tarafından değiştirilebilicek
void addActivity(Activity a){
_activities.add(a);
notifyListeners();
}

void deleteActivity(String activityId){
_activities.removeWhere((act)=> act.id== activityId);
notifyListeners();
}


}