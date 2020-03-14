import 'package:flutter/material.dart';
import '../screens/activities_screen.dart';
//import '../screens/choose_activities_screen.dart';
import '../screens/counselor_login_screen.dart';
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hey counselor!'),
          ),
          Divider(),
          ListTile(
            title: Text('Show Daily Activities'),
            onTap: () {
              Navigator.of(context).pushNamed(ActivitiesScreen.routeName);
            },
          ),
          ListTile(
            title: Text('Choose Campers\' Activities'),
            onTap: () {
              Navigator.of(context).pushNamed(CounselorLoginScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
