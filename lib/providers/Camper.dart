import 'package:provider/provider.dart';
import 'Bunk.dart';
import 'Activity.dart';
class Camper{
  final String id;
  final String name;
  final String surname;
  final Bunk bunk;  // final Bunk bunk;
  List<Activity> dailyActivitiesOfCamper=[]; 
  //Also the activities they will choose!

  Camper({this.id,this.name,this.surname,this.bunk});



}