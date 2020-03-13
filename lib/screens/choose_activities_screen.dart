import 'package:daily_camp_activities/widgets/CamperItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Bunk.dart';
import '../providers/Bunks.dart';

class ChooseActivitiesScreen extends StatelessWidget {
  static const routeName = '/choose-activities-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose your bunk!'),
        ),
        //Login yapan counselor'a göre ilerlicek burada!
        body: ListView.builder(
            itemCount:
                Provider.of<Bunks>(context, listen: false).bunkList.length,
            itemBuilder: (_, index) {
              return Container(
                padding: EdgeInsets.all(2),
                child: ListTile(
                  title: Card(
                    elevation: 2,
                    child: Text(
                      Provider.of<Bunks>(context, listen: false)
                          .bunkList[index]
                          .name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            }));
  }
}
