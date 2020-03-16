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
  Activity minor1 = null;
  Activity minor2 = null;
  Activity minor3 = null;
  @override
  Widget build(BuildContext context) {
    Camper chosenCamper = ModalRoute.of(context).settings.arguments;

    chosenCamper.dailyActivitiesOfCamper = [minor1, minor2, minor3];

    return Scaffold(
      appBar: AppBar(
        title: Text('${chosenCamper.name}\'s activities for today!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButton<Activity>(
            value: minor1,
            hint: minor1 == null ? Text('Minor 1') : Text(minor1.name),
            items: Provider.of<Activities>(context)
                .activities1
                .map((Activity act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
            onChanged: (actChosen) {
              setState(() {
                minor1 = actChosen;
                print('the first minor is ${actChosen.name}');
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton<Activity>(
            value: minor2,
            hint: minor2 == null ? Text('Minor 2') : Text('${minor2.name}'),
            items: Provider.of<Activities>(context).activities2.map((act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
            onChanged: (actChosen2) {
              setState(() {
                minor2 = actChosen2;
                print('the second minor is ${actChosen2.name}');
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton<Activity>(
            value: minor3,
            hint: Text('Minor 3'),
            items: Provider.of<Activities>(context).activities3.map((act) {
              return DropdownMenuItem<Activity>(
                value: act,
                child: Text(act.name),
              );
            }).toList(),
            onChanged: (actChosen3) {
              setState(() {
                minor3 = actChosen3;
                print('3rd minor is ${actChosen3.name} ');
              });
            },
          ),
        ],
      ),
    );
  }
}

//  //MINOR 1'DE DENEMELER YAPTIM AMA MINOR 2 HİÇ DEĞİŞMEDİ

//           DropdownButton<Activity>(
//             hint: Text('Minor 2'),

//             onChanged: (value) {
//               setState(() {
//                 chosenCamper.dailyActivitiesOfCamper[1] = value;
//               });
//             },
//             items: Provider.of<Activities>(context).activities2.map((act) {
//               return DropdownMenuItem<Activity>(
//                 value: act,
//                 child: Text(act.name),
//               );
//             }).toList(),
//           ),
