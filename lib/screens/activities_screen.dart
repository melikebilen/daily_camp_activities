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
        itemBuilder: (_,index){
          return ListTile(title:Text(activitiesData.activities[index].name));
        }),
        
        );
    
  }
}