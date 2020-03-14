import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Campers.dart';
import '../providers/Camper.dart';
import '../screens/camper_daily_activity_screen.dart';
class CamperItem extends StatelessWidget {
 final int index;
 final List<Camper> campersInASpecificBunk;
CamperItem(this.index,this.campersInASpecificBunk);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: true,
      onTap:()=> Navigator.of(context).pushReplacementNamed(CamperDailyActivityScreen.routeName,arguments: campersInASpecificBunk[index]),
      title:Text('${campersInASpecificBunk[index].name} ${campersInASpecificBunk[index].surname}'),
      subtitle: Text('${campersInASpecificBunk[index].bunk} ',
    
    ));
  }
}