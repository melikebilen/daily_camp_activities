import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Campers.dart';
class CamperItem extends StatelessWidget {
 final int index;
CamperItem(this.index);
  @override
  Widget build(BuildContext context) {
    final campersData=Provider.of<Campers>(context,listen: false);
    return ListTile(
      // onTap: , KAMPÇININ AKTİVİTELERİNİ SEÇMESİNİ SAĞLAYACAK KISMA GEÇ!
      title:Text('${campersData.campers[index].name} ${campersData.campers[index].surname}'),
      subtitle: Text('${campersData.campers[index].bunk.name} ',
    ));
  }
}