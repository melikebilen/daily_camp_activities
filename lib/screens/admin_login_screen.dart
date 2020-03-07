import 'package:daily_camp_activities/screens/edit_activities_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';


class AdminLoginScreen extends StatelessWidget {
  static const routeName = '/admin-login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Edit Activities'),
            color: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.of(context).pushNamed(EditActivitiesScreen.routeName);
            },
          ),
          RaisedButton(
            child: Text('Edit Campers'),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Edit Counselors'),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
               RaisedButton(
            child: Text('Edit Bunks'),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ],
      ),
      //adminin app drawer'ı farklı olmalı!
    );
  }
}
