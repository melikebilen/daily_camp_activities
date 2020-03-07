import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Activities.dart';
class ActivitiesScreen extends StatelessWidget {

  static const routeName = '/activities_screen';
  @override
  Widget build(BuildContext context) {
    final activitiesData=Provider.of<Activities>(context) ;
    return Scaffold(
      appBar: AppBar(title: Text('Activities for today!'),),
      body: ListView.builder(
        itemCount: activitiesData.activities.length,
        itemBuilder: (_,index){
          return Card(
            elevation: 5,
            child: ListTile(
              title:Text(activitiesData.activities[index].name),
              subtitle: Text('Counselor: ${activitiesData.activities[index].activityCounselor.toString()}'),)
            );
        }),
        
        );
    
  }
}