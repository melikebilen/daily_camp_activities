import 'package:daily_camp_activities/widgets/CamperItem.dart';
import 'package:daily_camp_activities/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Bunk.dart';
import '../providers/Bunks.dart';
import 'chosen_bunks_campers_screen.dart';

class CounselorLoginScreen extends StatelessWidget {
  static const routeName = '/counselor-login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose your bunk!'),
        ),
        drawer: AppDrawer(),
        //Login yapan counselor'a göre ilerlicek burada!
        body: ListView.builder(
            itemCount:
                Provider.of<Bunks>(context, listen: false).bunkList.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(
                  Provider.of<Bunks>(context, listen: false)
                      .bunkList[index]
                      ,
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => Navigator.of(context).pushNamed(
                    ChosenBunksCampersScreen.routeName,
                    arguments: Provider.of<Bunks>(context, listen: false)
                        .bunkList[index]
                        ),
              );
            }));
  }
}
