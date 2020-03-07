import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'activities_screen.dart';
import '../providers/Activities.dart';

class EditActivitiesScreen extends StatelessWidget {
  static const routeName = '/edit-activities-screen';

  @override
  Widget build(BuildContext context) {
    final activitiesData=Provider.of<Activities>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Edit Activities'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add),
        onPressed:activitiesData.addActivity ,)
      ],
      ),
      body: ListView.builder(
        itemCount: activitiesData.activities.length,
        itemBuilder: (_,index){
          return Dismissible(
            key: ValueKey(activitiesData.activities.length),
               child: Card(
              elevation: 5,
              child: ListTile(
                title:Text(activitiesData.activities[index].name),
                subtitle: Text('Counselor: ${activitiesData.activities[index].activityCounselor.toString()}'),)
              ),
          );
        }),
      



    );
  }
}