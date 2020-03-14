
import 'package:flutter/material.dart';
import '../providers/Campers.dart';
import '../widgets/CamperItem.dart';
import '../providers/Camper.dart';
import '../providers/Bunks.dart';
import '../providers/Bunk.dart';
import 'package:provider/provider.dart';
class ChosenBunksCampersScreen extends StatelessWidget {
  static const routeName = '/chosen-bunks-campers-screen';
  @override
  Widget build(BuildContext context) {
    String nameOfBunk=ModalRoute.of(context).settings.arguments; //Bunk'ın adını biliyorum


    final campersList=Provider.of<Campers>(context,listen: false);

    List<Camper> uniqueBunk = [...campersList.campers.where((camper){ return camper.bunk.name == nameOfBunk;})];

    return Scaffold(
      appBar:AppBar(title: Text('$nameOfBunk\'s Campers!'),),
      body: ListView.builder(
      itemCount: uniqueBunk.length,
      itemBuilder:(context,index){
      //CamperItem(index).while(campersData.campers[index].bunk.name== nameOfBunk)
        return CamperItem(index) ;
      } ),
       

     
      
    );
  }
}