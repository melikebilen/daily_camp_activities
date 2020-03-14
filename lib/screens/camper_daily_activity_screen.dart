import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Activities.dart';
import '../providers/Activity.dart';
import '../providers/Campers.dart';
import '../providers/Camper.dart';

class CamperDailyActivityScreen extends StatefulWidget {
  static const routeName = '/camper-daily-activity';

  @override
  _CamperDailyActivityScreenState createState() =>
      _CamperDailyActivityScreenState();
}

class _CamperDailyActivityScreenState extends State<CamperDailyActivityScreen> {
  @override
  Widget build(BuildContext context) {

    Camper chosenCamper = ModalRoute.of(context).settings.arguments;
    chosenCamper.dailyActivitiesOfCamper = [null, null, null];

    
    return Scaffold(
      appBar: AppBar(
        title: Text('${chosenCamper.name}\'s activities for today!'),
      ),
      body: DropdownButton<Activity>(
        hint: Text('Minor 1'),
        //value: chosenCamper.dailyActivitiesOfCamper[0],
        onChanged: (Activity chosen) {
          setState(() {
           chosenCamper.dailyActivitiesOfCamper[0] = chosen;
          });
        },
        items: Provider.of<Activities>(context).activities1.map((act) {
          return DropdownMenuItem<Activity>(
            child: Text(act.name),
          );
        }).toList(),
      ),
    );
  }
}
