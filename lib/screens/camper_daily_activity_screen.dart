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

// DropdownButton getButton(String minor, int a, List<Activity> actList){
//     return  DropdownButton<Activity>(
//             hint: Text(minor),
//             onChanged: (value) {
//               setState(() {
//                 chosenCamper.dailyActivitiesOfCamper[a] = value;
//               });
//             },
//             if(a==0){
//                 items: Provider.of<Activities>(context).activities.map((act) {
//               return DropdownMenuItem<Activity>(
//                 value: act,
//                 child: Text(act.name),
//               );
//             }).toList();
//             }
          
//           );
// }


    return Scaffold(
      appBar: AppBar(
        title: Text('${chosenCamper.name}\'s activities for today!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButton<Activity>(
            hint: Text('Minor 1'),
            onChanged: (value) {
              setState(() {
                chosenCamper.dailyActivitiesOfCamper[0] = value;
              });
            },
            items: Provider.of<Activities>(context).activities1.map((act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
          ),
          SizedBox(height: 10,),
          DropdownButton<Activity>(
            hint: Text('Minor 2'),
            onChanged: (value) {
              setState(() {
                chosenCamper.dailyActivitiesOfCamper[1] = value;
              });
            },
            items: Provider.of<Activities>(context).activities2.map((act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
          ),
          SizedBox(height: 10,),
           DropdownButton<Activity>(
            hint: Text('Minor 3'),
            onChanged: (value) {
              setState(() {
                chosenCamper.dailyActivitiesOfCamper[2] = value;
              });
            },
            items: Provider.of<Activities>(context).activities3.map((act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
