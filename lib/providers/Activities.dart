


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Activity.dart';

class Activities extends ChangeNotifier{
  List<Activity> _activities1= [
    Activity(
      // id:'1',
      name: 'Boardgames',
      activityCounselor:'Melike',
      period: '1',
    ),
      Activity(
      // id:'2',  
      name: 'Open Computers',
      activityCounselor:'Ceri',
      period: '1',
    ),
       Activity(
      // id:'3',
      name: 'HipHop',
      activityCounselor:'George',
      period:'1',
    ),


  ];

   List<Activity> _activities2= [
    Activity(
      // id:'5',
      name: 'Learn Turkish With Melike',
      activityCounselor:'Melike',
      period: '2',
    ),
      Activity(
      // id:'6',  
      name: 'Open Computers',
      activityCounselor:'Ceri',
      period: '2',
    ),


  ];

   List<Activity> _activities3= [
    Activity(
      // id:'1',
      name: 'Learn Turkish With Melike',
      activityCounselor:'Melike',
      period: '3',
    ),
       Activity(
      // id:'3',
      name: 'Zumba',
      activityCounselor:'Andrea',
      period:'3',
    ),


  ];

  
List<Activity> get activities{
  return[..._activities1,...activities2,...activities3];
}


List<Activity> get activities1{
  return[..._activities1];
}


List<Activity> get activities2{
  return[..._activities2];
}


List<Activity> get activities3{
  return[..._activities3];
}

//Sadece adminler tarafından değiştirilebilicek
void addActivity(Activity a){
  if(a.period=='1'){
    _activities1.add(a);
    
  }
  else if(a.period=='2'){
    _activities2.add(a);
  }

 else if(a.period=='3'){
    _activities3.add(a);
  }
notifyListeners();
}


void deleteActivity(String activityId){
_activities1.removeWhere((act)=> act.id== activityId);
_activities2.removeWhere((act)=> act.id== activityId);
_activities3.removeWhere((act)=> act.id== activityId);
notifyListeners();
}


}