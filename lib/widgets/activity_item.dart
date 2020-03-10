import 'package:daily_camp_activities/providers/Activity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Activities.dart';
class ActivityItem extends StatelessWidget {
  final int index;
 ActivityItem(this.index);
  @override
  Widget build(BuildContext context) {
     final activitiesData=Provider.of<Activities>(context);
    return Card(
              elevation: 5,
              child: ListTile(
                title:Text(activitiesData.activities[index].name),
                subtitle: Text('Counselor: ${activitiesData.activities[index].activityCounselor.toString()}'),)
              );
  }
}