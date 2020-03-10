import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './add_activity_screen.dart';
import 'activities_screen.dart';
import '../providers/Activities.dart';
import '../widgets/activity_item.dart';
import '../providers/Activity.dart';

class EditActivitiesScreen extends StatelessWidget {
  static const routeName = '/edit-activities-screen';
  
  

  @override
  Widget build(BuildContext context) {
    final activitiesData=Provider.of<Activities>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Edit Activities'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add),
        onPressed:(){ Navigator.of(context).pushNamed(AddActivityScreen.routeName);}),
      ],
      ),
      body: ListView.builder(
        itemCount: activitiesData.activities.length,
        itemBuilder: (_,index){
          return Dismissible(
            key: ValueKey(activitiesData.activities.length),
               child: ActivityItem(index),
              //HOW CAN I KNOW IF I DELETED IT!!
              onDismissed:(direction){activitiesData.deleteActivity(activitiesData.activities[index].id);},
          );
        }),
    );
  }
}