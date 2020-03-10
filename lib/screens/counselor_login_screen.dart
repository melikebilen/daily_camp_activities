import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Campers.dart';
import '../widgets/CamperItem.dart';
class CounselorLoginScreen extends StatelessWidget {
static const routeName = '/counselor_login_screen';
  @override
  Widget build(BuildContext context) {
    final campersData=Provider.of<Campers>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Counselor!!!'),),
      drawer: AppDrawer(),
      body:ListView.builder(
        itemCount: campersData.campers.length,
        itemBuilder:(_,index){
          return CamperItem(index);
        },
        ),
    );
  }
}