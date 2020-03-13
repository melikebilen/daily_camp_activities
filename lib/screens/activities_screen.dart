import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Activities.dart';
import '../widgets/activity_item.dart';

/////THE ACTIVITIES SCREEN THAT COUNSELORS SEEEEEEEEEE!!!!!!!!
class ActivitiesScreen extends StatelessWidget {
  static const routeName = '/activities_screen';

  Widget showActivities(
    BuildContext context,
    List<Activities> activities,
  ) {
    final activitiesData = Provider.of<Activities>(context);
    return ListView.builder(
        itemCount: activitiesData.activities.length,
        itemBuilder: (_, index) {
          return ActivityItem(index);
        });
  }

  @override
  Widget build(BuildContext context) {
    final activitiesData = Provider.of<Activities>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities for today!'),
      ),
      body: ListView.builder(
          itemCount: activitiesData.activities.length,
          itemBuilder: (_, index) {
            return ActivityItem(index);
          }),
    );
  }
}
