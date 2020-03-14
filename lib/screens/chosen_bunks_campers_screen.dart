
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
    final String nameOfBunk=ModalRoute.of(context).settings.arguments; //Bunk'ın adını biliyorum

    final campersList=Provider.of<Campers>(context,listen: false);

     List<Camper> campersInASpecificBunk= [...campersList.campers.where((c){ return (nameOfBunk==c.bunk);})];

    return Scaffold(
      appBar:AppBar(title: Text('$nameOfBunk\'s Campers!'),),
      body: ListView.builder(
      itemCount:campersInASpecificBunk.length,
      itemBuilder:(_,index){
        return CamperItem(index, campersInASpecificBunk) ;
      } ),
       

     
      
    );
  }
}